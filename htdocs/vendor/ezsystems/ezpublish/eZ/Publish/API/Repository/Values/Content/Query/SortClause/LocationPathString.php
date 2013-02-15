<?php
/**
 * File containing the eZ\Publish\API\Repository\Values\Content\Query\SortClause\LocationPathString class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\API\Repository\Values\Content\Query\SortClause;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;

/**
 * Sets sort direction on the location path string for a content query
 */
class LocationPathString extends SortClause
{
    /**
     * Constructs a new LocationPathString SortClause
     * @param string $sortDirection
     */
    public function __construct( $sortDirection = Query::SORT_ASC )
    {
        parent::__construct( 'location_path_string', $sortDirection );
    }
}
