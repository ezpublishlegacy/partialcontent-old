<?php
/**
 * File containing the ConfiguredLocalImageService class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\MVC\Symfony\File;

use eZ\Publish\Core\FieldType\FileService\LocalFileService;
use eZ\Publish\Core\MVC\ConfigResolverInterface;

/**
 * Local file service for images.
 */
class ConfiguredLocalImageService extends LocalFileService
{
    public function __construct( ConfigResolverInterface $resolver, $installDir )
    {
        parent::__construct(
            $installDir,
            '',
            $resolver->getParameter( 'var_dir' ) . '/' . $resolver->getParameter( 'storage_dir' ) . '/images'
        );
    }
}
