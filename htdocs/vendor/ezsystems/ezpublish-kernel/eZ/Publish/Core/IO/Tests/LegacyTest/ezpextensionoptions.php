<?php
/**
 * File containing the ezpExtensionOptions mock class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

class ezpExtensionOptions
{
    public function __construct( array $options )
    {
        if ( isset( $options['handlerParams'] ) )
        {
            $this->handlerParams = $options['handlerParams'];
        }
    }

    public $handlerParams;
}
