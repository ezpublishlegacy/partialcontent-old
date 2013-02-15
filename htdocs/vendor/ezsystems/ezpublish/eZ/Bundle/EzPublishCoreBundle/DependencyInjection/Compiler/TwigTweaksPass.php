<?php
/**
 * File containing the TwigTweaksPass class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Bundle\EzPublishCoreBundle\DependencyInjection\Compiler;

use Symfony\Component\DependencyInjection\Compiler\CompilerPassInterface;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Reference;
use ReflectionClass;

/**
 * This compiler pass will register eZ Publish field types.
 */
class TwigTweaksPass implements CompilerPassInterface
{

    /**
     * @param \Symfony\Component\DependencyInjection\ContainerBuilder $container
     */
    public function process( ContainerBuilder $container )
    {
        if ( !$container->hasDefinition( 'twig.loader.chain' ) )
            return;

        // Add registered loaders to the chain loader
        $refChainLoader = $container->getDefinition( 'twig.loader.chain' );
        foreach ( $container->findTaggedServiceIds( 'twig.loader' ) as $id => $attributes )
        {
            $refChainLoader->addMethodCall( 'addLoader', array( new Reference( $id ) ) );
        }

    }
}
