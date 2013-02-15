<?php
/**
 * CreateContentTypeSignal class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Signal\ContentTypeService;

use eZ\Publish\Core\SignalSlot\Signal;

/**
 * CreateContentTypeSignal class
 * @package eZ\Publish\Core\SignalSlot\Signal\ContentTypeService
 */
class CreateContentTypeSignal extends Signal
{
    /**
     * Content Type ID
     *
     * @var mixed
     */
    public $contentTypeId;
}
