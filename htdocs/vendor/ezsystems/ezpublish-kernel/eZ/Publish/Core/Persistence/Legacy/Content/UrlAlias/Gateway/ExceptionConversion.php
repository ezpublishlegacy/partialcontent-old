<?php
/**
 * File containing the Section Gateway class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\Persistence\Legacy\Content\UrlAlias\Gateway;

use eZ\Publish\Core\Persistence\Legacy\Content\UrlAlias\Gateway;
use ezcDbException;
use PDOException;

/**
 * UrlAlias Handler
 */
class ExceptionConversion extends Gateway
{
    /**
     * The wrapped gateway
     *
     * @var \eZ\Publish\Core\Persistence\Legacy\Content\UrlAlias\Gateway
     */
    protected $innerGateway;

    /**
     * Creates a new exception conversion gateway around $innerGateway
     *
     * @param \eZ\Publish\Core\Persistence\Legacy\Content\UrlAlias\Gateway $innerGateway
     */
    public function __construct( Gateway $innerGateway )
    {
        $this->innerGateway = $innerGateway;
    }

    /**
     * Loads list of aliases by given $locationId.
     *
     * @param mixed $locationId
     * @param boolean $custom
     * @param mixed $languageId
     *
     * @return array
     */
    public function loadLocationEntries( $locationId, $custom = false, $languageId = false )
    {
        try
        {
            return $this->innerGateway->loadLocationEntries( $locationId, $custom );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Returns boolean indicating if the row with given $id is special root entry.
     *
     * Special root entry entry will have parentId=0 and text=''.
     * In standard installation this entry will point to location with id=2.
     *
     * @param mixed $id
     *
     * @return boolean
     */
    public function isRootEntry( $id )
    {
        try
        {
            return $this->innerGateway->isRootEntry( $id );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Downgrades autogenerated entry matched by given $action and $languageId and negatively matched by
     * composite primary key.
     *
     * If language mask of the found entry is composite (meaning it consists of multiple language ids) given
     * $languageId will be removed from mask. Otherwise entry will be marked as history.
     *
     * @param string $action
     * @param mixed $languageId
     * @param mixed $newId
     * @param mixed $parentId
     * @param string $textMD5
     *
     * @return void
     */
    public function cleanupAfterPublish( $action, $languageId, $newId, $parentId, $textMD5 )
    {
        try
        {
            $this->innerGateway->cleanupAfterPublish( $action, $languageId, $newId, $parentId, $textMD5 );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Marks all entries with given $id as history entries.
     *
     * This method is used by Handler::locationMoved(). For this reason rows are not updated with next id value as
     * all entries with given id are being marked as history and there is no need for id separation.
     * Thus only "link" and "is_original" columns are updated.
     *
     * @param mixed $id
     * @param mixed $link
     *
     * @return void
     */
    public function historizeId( $id, $link )
    {
        try
        {
            $this->innerGateway->historizeId( $id, $link );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Updates parent id of autogenerated entries.
     *
     * Update includes history entries.
     *
     * @param mixed $oldParentId
     * @param mixed $newParentId
     *
     * @return void
     */
    public function reparent( $oldParentId, $newParentId )
    {
        try
        {
            $this->innerGateway->reparent( $oldParentId, $newParentId );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Updates single row data matched by composite primary key
     *
     * Use optional parameter $languageMaskMatch to additionally limit the query match with languages
     *
     * @param mixed $parentId
     * @param string $textMD5
     * @param array $values associative array with column names as keys and column values as values
     *
     * @return void
     */
    public function updateRow( $parentId, $textMD5, array $values )
    {
        try
        {
            $this->innerGateway->updateRow( $parentId, $textMD5, $values );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Inserts new row in urlalias_ml table.
     *
     * @param array $values
     *
     * @return mixed
     */
    public function insertRow( array $values )
    {
        try
        {
            return $this->innerGateway->insertRow( $values );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads single row data matched by composite primary key
     *
     * @param mixed $parentId
     * @param string $textMD5
     *
     * @return array
     */
    public function loadRow( $parentId, $textMD5 )
    {
        try
        {
            return $this->innerGateway->loadRow( $parentId, $textMD5 );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads autogenerated entry id by given $action and optionally $parentId.
     *
     * @param string $action
     * @param mixed|null $parentId
     *
     * @return array
     */
    public function loadAutogeneratedEntry( $action, $parentId = null )
    {
        try
        {
            return $this->innerGateway->loadAutogeneratedEntry( $action, $parentId );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Converts all rows with given $action to NOP type rows.
     *
     * @param string $action
     *
     * @return void
     */
    public function removeByAction( $action )
    {
        try
        {
            $this->innerGateway->removeByAction( $action );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads paged list of global aliases.
     *
     * @param string|null $languageCode
     * @param int $offset
     * @param int $limit
     *
     * @return array
     */
    public function listGlobalEntries( $languageCode = null, $offset = 0, $limit = -1 )
    {
        try
        {
            return $this->innerGateway->listGlobalEntries( $languageCode, $offset, $limit );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Converts single row matched by composite primary key to NOP type row.
     *
     * @param mixed $parentId
     * @param string $textMD5
     *
     * @return boolean
     */
    public function removeCustomAlias( $parentId, $textMD5 )
    {
        try
        {
            return $this->innerGateway->removeCustomAlias( $parentId, $textMD5 );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads complete URL alias data by given array of path hashes.
     *
     * @param string[] $urlHashes URL string hashes
     *
     * @return array
     */
    public function loadUrlAliasData( array $urlHashes )
    {
        try
        {
            return $this->innerGateway->loadUrlAliasData( $urlHashes );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads all data for the path identified by given $id.
     *
     * @param mixed $id
     *
     * @return array
     */
    public function loadPathData( $id )
    {
        try
        {
            return $this->innerGateway->loadPathData( $id );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads path data identified by given ordered array of hierarchy data.
     *
     * The first entry in $hierarchyData corresponds to the top-most path element in the path, the second entry the
     * child of the first path element and so on.
     * This method is faster than self::getPath() since it can fetch all elements using only one query, but can be used
     * only for autogenerated paths.
     *
     * @param array $hierarchyData
     *
     * @return array
     */
    public function loadPathDataByHierarchy( array $hierarchyData )
    {
        try
        {
            return $this->innerGateway->loadPathDataByHierarchy( $hierarchyData );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Loads all autogenerated entries with given $parentId with optionally included history entries.
     *
     * @param mixed $parentId
     * @param boolean $includeHistory
     *
     * @return array
     */
    public function loadAutogeneratedEntries( $parentId, $includeHistory = false )
    {
        try
        {
            return $this->innerGateway->loadAutogeneratedEntries( $parentId, $includeHistory );
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }

    /**
     * Returns next value for "id" column.
     *
     * @return mixed
     */
    public function getNextId()
    {
        try
        {
            return $this->innerGateway->getNextId();
        }
        catch ( ezcDbException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
        catch ( PDOException $e )
        {
            throw new \RuntimeException( 'Database error', 0, $e );
        }
    }
}
