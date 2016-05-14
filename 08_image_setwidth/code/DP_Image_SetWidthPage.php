<?php
class DP_Image_SetWidthPage extends DemonstrationPage {

	private static $db = array(
		'Width' => 'Int'
	);

	private static $has_one = array(
		'Image' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		$field = new NumericField('Width');
    	$fields->addFieldToTab($tab, $field);

		$field = new UploadField('Image');
		$field->setAllowedMaxFileNumber(1);
		$field->setFolderName('Uploads/10-image-setwidth/');
    	$fields->addFieldToTab($tab, $field);

		return $fields;
	}
}

class DP_Image_SetWidthPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
