<?php
/**
 * File containing the PreContentViewListener class.
 *
 */

namespace Blend\PartialContentBundle\EventListener;

use eZ\Publish\Core\MVC\ConfigResolverInterface,
    eZ\Publish\Core\MVC\Symfony\Event\PreContentViewEvent,
    eZ\Publish\API\Repository\Values\Content\Query,
    eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator,
    eZ\Publish\API\Repository\Values\Content\Query\Criterion,
    eZ\Publish\API\Repository\Values\Content\Query\SortClause,
    eZ\Publish\API\Repository\Repository;


class PreContentViewListener
{

    protected $configResolver;

    /**
     * @var \eZ\Publish\API\Repository\Repository
     */
    protected $repository;



    public function __construct( Repository $repository, ConfigResolverInterface $configResolver )
    {
        $this->repository = $repository;
        $this->configResolver = $configResolver;
    }

    public function onPreContentView( PreContentViewEvent $event )
    {
        $surroundTypeIdentifier = $this->configResolver->getParameter('surround_type', 'partialcontent');

        //Get the type id based on the identifier (this will be unnecessary in the next community release)
        $surroundTypeId = $this
            ->repository
            ->getContentTypeService()
            ->loadContentTypeByIdentifier( $surroundTypeIdentifier )
            ->id;

        //Retrieve the surround object
        $searchService = $this->repository->getSearchService();
        $surround = $searchService->findSingle( new Criterion\ContentTypeId($surroundTypeId) );

        $contentView = $event->getContentView();
        $contentView->addParameters(array('surround' => $surround));
    }
}