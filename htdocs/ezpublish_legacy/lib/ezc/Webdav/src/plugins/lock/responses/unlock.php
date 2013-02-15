<?php
/**
 * File containing the ezcWebdavUnlockResponse class.
 *
 * @package Webdav
 * @version //autogentag//
 * @copyright Copyright (C) 2005-2010 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/new_bsd New BSD License
 *
 * @access private
 */
/**
 * Class generated by the lock plugin to respond to UNLOCK requests on a resource.
 *
 * @version //autogentag//
 * @package Webdav
 *
 * @access private
 */
class ezcWebdavUnlockResponse extends ezcWebdavResponse
{
    /**
     * Creates a new response object.
     * 
     * @return void
     */
    public function __construct()
    {
        parent::__construct( ezcWebdavResponse::STATUS_204 );
    }
}

?>
