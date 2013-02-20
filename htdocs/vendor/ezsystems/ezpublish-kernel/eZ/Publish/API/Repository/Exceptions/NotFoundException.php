<?php
/**
 * File containing the eZ\Publish\API\Repository\Exceptions\NotFoundException class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\API\Repository\Exceptions;

use Exception;

/**
 * This Exception is thrown if an object referenced by an id or identifier
 * could not be found in the repository.
 * @package eZ\Publish\API\Repository\Exceptions
 */
abstract class NotFoundException extends Exception
{
}

