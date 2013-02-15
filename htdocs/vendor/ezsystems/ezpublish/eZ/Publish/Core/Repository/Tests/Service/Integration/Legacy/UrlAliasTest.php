<?php
/**
 * File contains: eZ\Publish\Core\Repository\Tests\Service\Integration\Legacy\UrlAliasTest class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\Repository\Tests\Service\Integration\Legacy;

use eZ\Publish\Core\Repository\Tests\Service\Integration\UrlAliasBase as BaseUrlAliasTest;

/**
 * Test case for UrlAlias Service using Legacy storage class
 */
class UrlAliasTest extends BaseUrlAliasTest
{
    protected function getRepository()
    {
        return Utils::getRepository();
    }
}
