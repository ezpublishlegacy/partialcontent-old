<?php
/**
 * UpdatePolicySignal class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Signal\RoleService;

use eZ\Publish\Core\SignalSlot\Signal;

/**
 * UpdatePolicySignal class
 * @package eZ\Publish\Core\SignalSlot\Signal\RoleService
 */
class UpdatePolicySignal extends Signal
{
    /**
     * PolicyId
     *
     * @var mixed
     */
    public $policyId;
}
