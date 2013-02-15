<?php
/**
 * File containing the UrlAliasRouter class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Bundle\EzPublishCoreBundle\Routing;

use eZ\Publish\Core\MVC\Symfony\Routing\UrlAliasRouter as BaseUrlAliasRouter;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\DependencyInjection\ContainerInterface;

class UrlAliasRouter extends BaseUrlAliasRouter
{
    /**
     * @var \Symfony\Component\DependencyInjection\ContainerInterface
     */
    protected $container;

    public function setContainer( ContainerInterface $container )
    {
        $this->container = $container;
    }

    /**
     * @return \eZ\Publish\Core\MVC\ConfigResolverInterface
     */
    protected function getConfigResolver()
    {
        return $this->container->get( 'ezpublish.config.resolver' );
    }

    public function matchRequest( Request $request )
    {
        // UrlAliasRouter might be disabled from configuration.
        // An example is for running the admin interface: it needs to be entirely run through the legacy kernel.
        if ( $this->getConfigResolver()->getParameter( 'url_alias_router' ) === false )
            throw new ResourceNotFoundException( "Config says to bypass UrlAliasRouter" );

        return parent::matchRequest( $request );
    }
}
