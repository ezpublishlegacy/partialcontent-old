<?php
/**
 * File contains: eZ\Publish\Core\Repository\Tests\Service\Integration\InMemory\LanguageTest class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\Repository\Tests\Service\Integration\InMemory;

use eZ\Publish\Core\Repository\Tests\Service\Integration\LanguageBase as BaseLanguageServiceTest;

/**
 * Test case for Language Service using InMemory storage class
 */
class LanguageTest extends BaseLanguageServiceTest
{
    protected function getRepository()
    {
        return Utils::getRepository();
    }
}
