<?php
/**
 * File containing the eZ\Publish\API\Repository\Exceptions\InvalidArgumentException class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\API\Repository\Exceptions;

/**
 *
 * This exception is thrown if a service method is called with an illegal or non appropriate value
 */
abstract class InvalidArgumentException extends ForbiddenException
{
}
