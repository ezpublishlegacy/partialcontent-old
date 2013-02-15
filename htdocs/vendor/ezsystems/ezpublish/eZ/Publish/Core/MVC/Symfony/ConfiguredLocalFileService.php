<?php
/**
 * File containing the ConfiguredLocalFileService class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\MVC\Symfony;

use eZ\Publish\Core\FieldType\FileService\LocalFileService;
use eZ\Publish\Core\MVC\ConfigResolverInterface;

class ConfiguredLocalFileService extends LocalFileService
{
    /**
     * Builds the file service based on the dynamic configuration provided by
     * the config resolver
     *
     * @param ConfigResolverInterface $resolver
     * @param string $installDir
     */
    public function __construct( ConfigResolverInterface $resolver, $installDir )
    {
        parent::__construct(
            $installDir,
            $resolver->getParameter( 'var_dir' ) . '/' . $resolver->getParameter( 'storage_dir' ) . '/' . $resolver->getParameter( 'binary_dir' )
        );
    }
}

