<?php
/**
 * UnhideLocationSignal class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Signal\LocationService;

use eZ\Publish\Core\SignalSlot\Signal;

/**
 * UnhideLocationSignal class
 * @package eZ\Publish\Core\SignalSlot\Signal\LocationService
 */
class UnhideLocationSignal extends Signal
{
    /**
     * Location ID
     *
     * @var mixed
     */
    public $locationId;
}
