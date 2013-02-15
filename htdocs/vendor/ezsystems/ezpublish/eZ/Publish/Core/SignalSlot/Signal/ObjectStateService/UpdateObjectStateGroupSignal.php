<?php
/**
 * UpdateObjectStateGroupSignal class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Signal\ObjectStateService;

use eZ\Publish\Core\SignalSlot\Signal;

/**
 * UpdateObjectStateGroupSignal class
 * @package eZ\Publish\Core\SignalSlot\Signal\ObjectStateService
 */
class UpdateObjectStateGroupSignal extends Signal
{
    /**
     * ObjectStateGroupId
     *
     * @var mixed
     */
    public $objectStateGroupId;
}