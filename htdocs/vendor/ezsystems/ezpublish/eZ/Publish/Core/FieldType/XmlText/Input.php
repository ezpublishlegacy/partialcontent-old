<?php
/**
 * File containing the eZ\Publish\Core\FieldType\XmlText\Input class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\FieldType\XmlText;

abstract class Input
{
    /**
     * Contains the internal representation of the XmlText field type
     *
     * @var string
     */
    protected $internalRepresentation;

    /**
     * Returns the internal representation of the XmlText field type
     *
     * @return string
     */
    final public function getInternalRepresentation()
    {
        return $this->internalRepresentation;
    }
}
