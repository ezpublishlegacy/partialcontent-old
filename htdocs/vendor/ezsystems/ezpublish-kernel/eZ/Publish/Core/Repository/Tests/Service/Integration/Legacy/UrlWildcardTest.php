<?php
/**
 * File contains: eZ\Publish\Core\Repository\Tests\Service\Integration\Legacy\UrlWildcardTest class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\Repository\Tests\Service\Integration\Legacy;

use eZ\Publish\Core\Repository\Tests\Service\Integration\UrlWildcardBase as BaseUrlWildcardTest;

/**
 * Test case for UrlWildcard Service using Legacy storage class
 */
class UrlWildcardTest extends BaseUrlWildcardTest
{
    protected function getRepository()
    {
        return Utils::getRepository();
    }
}
