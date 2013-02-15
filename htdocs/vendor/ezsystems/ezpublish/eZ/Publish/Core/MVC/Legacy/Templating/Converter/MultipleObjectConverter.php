<?php
/**
 * File containing the MultipleObjectConverter class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\MVC\Legacy\Templating\Converter;

/**
 * Interface for multiple object converters.
 * This is useful if one needs to convert several objects at once.
 */
interface MultipleObjectConverter extends ObjectConverter
{
    /**
     * Registers an object to the converter.
     * $alias is the variable name that will be exposed in the legacy template.
     *
     * @param mixed $object
     * @param string $alias
     *
     * @throws \InvalidArgumentException If $object is not an object
     *
     * @return void
     */
    public function register( $object, $alias );

    /**
     * Converts all registered objects and returns them in a hash where the object's alias is the key.
     *
     * @return array|\eZ\Publish\Core\MVC\Legacy\Templating\LegacyCompatible[]
     */
    public function convertAll();
}
