<?php
/**
 * File containing the LegacyStorageEngineFactory class.
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Bundle\EzPublishCoreBundle\ApiLoader;

use eZ\Publish\Core\Persistence\Legacy\EzcDbHandler;
use eZ\Publish\Core\Persistence\Legacy\Content\FieldValue\ConverterRegistry;
use eZ\Publish\Core\Persistence\Legacy\Content\StorageRegistry;
use Symfony\Component\DependencyInjection\ContainerInterface;

class LegacyStorageEngineFactory
{

    /**
     * @var \Symfony\Component\DependencyInjection\ContainerInterface
     */
    protected $container;

    /**
     * Collection of converters with identifier as key and FQN class name as value
     *
     * @var array
     */
    protected $converters = array();

    public function __construct( ContainerInterface $container )
    {
        $this->container = $container;
    }

    /**
     * Registers a field type converter as expected in legacy storage engine.
     * $className must implement eZ\Publish\Core\Persistence\Legacy\Content\FieldValue\Converter interface.
     *
     * @param string $typeIdentifier Field type identifier the converter will be used for
     * @param string $className FQN of the converter class
     */
    public function registerFieldTypeConverter( $typeIdentifier, $className )
    {
        $this->converters[$typeIdentifier] = $className;
    }

    /**
     * Builds the Legacy Storage Engine
     *
     * @param \eZ\Publish\Core\Persistence\Legacy\EzcDbHandler $dbhandler
     * @param boolean $deferTypeUpdate
     *
     * @return \eZ\Publish\Core\Persistence\Legacy\Handler
     */
    public function buildLegacyEngine( EzcDbHandler $dbhandler, $deferTypeUpdate )
    {
        $legacyEngineClass = $this->container->getParameter( 'ezpublish.api.storage_engine.legacy.class' );
        return new $legacyEngineClass(
            $dbhandler,
            new ConverterRegistry( $this->converters ),
            new StorageRegistry(
                $this->container->get( 'ezpublish.api.repository.factory' )->getExternalStorageHandlers()
            ),
            $this->container->get( 'ezpublish.api.storage_engine.legacy.transformation_processor' ),
            array(
                'defer_type_update' => (bool)$deferTypeUpdate,
            )
        );
    }
}
