<?php
/**
 * File containing the watermark tool handler
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version 5.1.0-alpha1
 * @package ezie
 */
$prepare_action = new eZIEImagePreAction();

$http = eZHTTPTool::instance();

if ( $prepare_action->hasRegion() && $http->hasPostVariable( 'watermark_image' ) )
{
    $imageconverter = new eZIEezcImageConverter(
        eZIEImageToolWatermark::filter(
            $prepare_action->getRegion(),
            $http->variable( 'watermark_image' )
        )
    );
}
else
{
    // @todo Error handling
}

$imageconverter->perform(
    $prepare_action->getImagePath(),
    $prepare_action->getNewImagePath()
);

eZIEImageToolResize::doThumb(
    $prepare_action->getNewImagePath(),
    $prepare_action->getNewThumbnailPath()
);

echo (string)$prepare_action;
eZExecution::cleanExit();
?>
