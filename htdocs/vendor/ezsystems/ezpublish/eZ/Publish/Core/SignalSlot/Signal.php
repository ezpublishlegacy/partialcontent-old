<?php
/**
 * File containing the SignalDispatcher class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot;

use eZ\Publish\API\Repository\Values\ValueObject;

/**
 * Base class for Signals. All Signals must derive this class.
 *
 * A Signal must always be fully export and re-creatable. It must therefore not
 * depend on external object references, resources or similar.
 *
 * @internal
 */
abstract class Signal extends ValueObject
{
}
