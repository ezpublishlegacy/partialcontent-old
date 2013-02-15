<?php
/**
 * File contains: eZ\Publish\Core\Repository\Tests\Service\Integration\InMemory\IOUploadTest class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\Repository\Tests\Service\Integration\InMemory;

use PHPUnit_Extensions_PhptTestCase;

/**
 * Test case for IO file upload using InMemory storage class
 */
class IOUploadPHPT extends PHPUnit_Extensions_PhptTestCase
{
    public function __construct()
    {
        parent::__construct( __DIR__ . '/upload.phpt' );
    }

    // this method needs to be public static so upload.phpt test
    // can get ahold of Repository object
    public static function getRepository()
    {
        return Utils::getRepository();
    }
}
