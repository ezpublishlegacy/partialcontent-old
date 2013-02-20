<?php
/**
 * File containing the eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\API\Repository\Values\Content\Query\Criterion;

/**
 * This class does...
 */
class LogicalAnd extends LogicalOperator
{
    /**
     * Creates a new AND logic criterion.
     *
     * This criterion will only match if ALL of the given criteria match
     *
     * @param Criterion[] $criteria
     */
    public function __construct( array $criteria )
    {
        parent::__construct( $criteria );
    }
}
