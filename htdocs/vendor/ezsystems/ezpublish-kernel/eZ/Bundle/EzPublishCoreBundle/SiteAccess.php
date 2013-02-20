<?php
/**
 * File containing the SiteAccess class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Bundle\EzPublishCoreBundle;

use eZ\Publish\Core\MVC\Symfony\SiteAccess as BaseSiteAccess;
use Symfony\Component\HttpFoundation\ParameterBag;

class SiteAccess extends BaseSiteAccess
{
    /**
     * @var \Symfony\Component\HttpFoundation\ParameterBag
     */
    public $attributes;

    public function __construct( $name = null, $matchingType = null, $matcher = null )
    {
        parent::__construct( $name, $matchingType, $matcher );
        $this->attributes = new ParameterBag();
    }
}
