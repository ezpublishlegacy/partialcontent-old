<?php
namespace Blend\PartialContentBundle\Controller;

use Symfony\Component\HttpFoundation\Response,
    eZ\Publish\Core\MVC\Symfony\Controller\Content\ViewController as APIViewController,
    eZ\Publish\API\Repository\Values\Content,
    eZ\Publish\API\Repository\Values\Content\Query,
    eZ\Publish\API\Repository\Values\Content\Query\Criterion,
    eZ\Publish\API\Repository\Values\Content\Search\SearchResult,
    eZ\Publish\API\Repository\Values\Content\Query\SortClause;

/**
 * BlogController provides basic sub-request methods used by the Partial Content Blog
 */
class BlogController extends APIViewController
{
    /**
     * postsByDate returns a formatted list of all posts beneath a location id(aka node id)
     * Posts are retrieved from the repository and returned in reverse chronological order
     * @param $subTreeLocationId The location ID (node ID) to look under
     * @param string $viewType What type of view template should render each result
     * @param int $limit How many items to return
     * @param int $offset The record offset to start at
     * @param bool $navigator Whether to render a paginator
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function postsByDate($subTreeLocationId, $viewType='summary', $limit=10, $offset=0, $navigator=true)
    {
        //Retrieve the location service from the Symfony container
        $locationService = $this->getRepository()->getLocationService();

        //Load the called location (node) from the repository based on the ID
        $root = $locationService->loadLocation( $subTreeLocationId );

        //Get the modification time from the content object
        $modificationDate = $root->contentInfo->modificationDate;

        //Retrieve a subtree fetch of the latest posts
        $postResults = $this->fetchSubTree(
            $root,
            array('blog_post'),
            array(new SortClause\Field('blog_post','publication_date',Query::SORT_DESC)),
            true,
            $limit,
            $offset
        );

        //Convert the results from a search result object into a simple array
        $posts = array();
        foreach ( $postResults->searchHits as $hit )
        {
            $posts[] = $hit->valueObject;

            //If any of the posts is newer than the root, use that post's modification date
            if ($hit->valueObject->contentInfo->modificationDate > $modificationDate) {
                $modificationDate = $hit->valueObject->contentInfo->modificationDate;
            }
        }

        //Set the etag and modification date on the response
        $response = $this->buildResponse(
            __METHOD__ . $subTreeLocationId,
            $modificationDate
        );

        $response->headers->set( 'X-Location-Id', $subTreeLocationId );

        //If nothing has been modified, return a 304
        if ( $response->isNotModified( $this->getRequest() ) )
        {
            return $response;
        }

        //Render the output
        return $this->render(
            'BlendPartialContentBundle::posts_list.html.twig',
            array(
                'total' => $postResults->totalCount,
                'offset' => $offset,
                'root' => $root,
                'paginationRoot' => $root,
                'posts' => $posts,
                'viewType' => $viewType,
                'navigator' => (bool) $navigator,
                'limit' => $limit,
                'next' => 'Older',
                'prev' => 'Newer'
            ),
            $response
        );
    }

    public function menu(
        $selected = null,
        $subTreeLocationId = false,
        $contentTypeIdentifiers = array()
    )
    {
        $homeLocationId = $this->getConfigResolver()->getParameter('root_location_id', 'partialcontent');
        if (!$subTreeLocationId) {
            $subTreeLocationId = $homeLocationId;
        }

        if (!count($contentTypeIdentifiers)) {
            $contentTypeIdentifiers = $this->getConfigResolver()->getParameter('menu_content_types', 'partialcontent');
        }
        echo "[[$selected]]";

        //Retrieve the location service from the Symfony container
        $locationService = $this->getRepository()->getLocationService();

        //Load the called location (node) from the repository based on the ID
        $root = $locationService->loadLocation( $subTreeLocationId );

        //Set the etag and modification date on the response
        $response = $this->buildResponse(
            __METHOD__ . $subTreeLocationId . '-' . $selected,
            $root->contentInfo->modificationDate
        );

        //If nothing has been modified, return a 304
        if ( $response->isNotModified( $this->getRequest() ) )
        {
            return $response;
        }

        //Retrieve a subtree fetch of the latest posts
        $results = $this->fetchSubTree(
            $root,
            $contentTypeIdentifiers,
            array(new SortClause\LocationPriority()),
            false
        );

        //Convert the results from a search result object into a simple array
        $locations = array();
        foreach ( $results->searchHits as $hit )
        {
            $locations[] = $locationService->loadLocation($hit->valueObject->contentInfo->mainLocationId);
        }

        $response->headers->set( 'X-Location-Id', $subTreeLocationId );

        //Render the output
        return $this->render(
            'BlendPartialContentBundle::top_menu.html.twig',
            array(
                'root' => $root,
                'locations' => $locations,
                'selectedLocationId' => $selected,
                'homeLocationId' => $homeLocationId
            ),
            $response
        );

    }


    /**
     * A convenience method to provide a simple method for retrieving selected objects.
     * Returns all content object from a subtree of content by type, based on the location
     * @param Location $subTreeLocation The location object representing a location (node) in the repository
     * @param array $typeIdentifiers an array of string containing identifiers for ContentTypes
     * @param array $sortMethods An array of sort methods
     * @param null $limit A number of objects to return
     * @param int $offset How many records to offset from teh start of the list
     * @return \eZ\Publish\API\Repository\Values\Content\Search\SearchResult
     * @todo Factor this method out as a service to be used by other controllers
     */
    protected function fetchSubTree(
        \eZ\Publish\API\Repository\Values\Content\Location $subTreeLocation,
        array $typeIdentifiers=array(),
        array $sortMethods=array(),
        $searchTree = true,
        $limit = null,
        $offset = 0
    )
    {

        //Access the search service provided by the eZ Repository (Public API)
        $searchService = $this->getRepository()->getSearchService();

        $criterion = array(
            new Criterion\ContentTypeIdentifier( $typeIdentifiers )
        );

        if ($searchTree) {
            $criterion[] = new Criterion\Subtree( $subTreeLocation->pathString );
        } else {
            $criterion[] = new Criterion\ParentLocationId( $subTreeLocation->id );
        }

        //Construct a query
        $query = new Query();
        $query->criterion = new Criterion\LogicalAnd(
            $criterion
        );
        if ( !empty( $sortMethods ) )
        {
            $query->sortClauses = $sortMethods;
        }
        $query->limit = $limit;
        $query->offset = $offset;

        //Return the content from the repository
        return $searchService->findContent( $query );
    }

}
