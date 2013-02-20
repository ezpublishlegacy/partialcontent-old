<?php
/**
 * File containing the eZ\Publish\API\Repository\Values\User\RoleCreateStruct class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\API\Repository\Values\User;

use eZ\Publish\API\Repository\Values\ValueObject;

/**
 * This class is used to create a new role
 */
abstract class RoleCreateStruct extends ValueObject
{
    /**
     * Readable string identifier of a role
     *
     * @var string
     */
    public $identifier;

    /**
     * Returns policies associated with the role
     *
     * @return \eZ\Publish\API\Repository\Values\User\PolicyCreateStruct[]
     */
    abstract public function getPolicies();

    /**
     * Adds a policy to this role
     *
     * @param \eZ\Publish\API\Repository\Values\User\PolicyCreateStruct $policyCreateStruct
     */
    abstract public function addPolicy( PolicyCreateStruct $policyCreateStruct );

}
