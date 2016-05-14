<?php
class ExampleLoopingItem extends DataObject {
	private static $db = array(
		'FirstName' => 'Text',
		'LastName' => 'Text',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'Avatar' => 'Image',
		'Page' => 'DemonstrationPage'
	);

	private static $default_sort = 'SortOrder ASC';

	private static $summary_fields = array(
		'AvatarThumbnail' => 'Avatar',
		'FirstName' => 'First',
		'LastName' => 'Last'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('PageID');
		$fields->removeByName('SortOrder');

		$tab = 'Root.Main';

		$field = new TextField('FirstName');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextField('LastName');
    	$fields->addFieldToTab($tab, $field);

		$field = new UploadField('Avatar');
		$field->setAllowedMaxFileNumber(1);
		$field->setFolderName('Uploads/02-template-controls/');
    	$fields->addFieldToTab($tab, $field);

		return $fields;
	}

	public function getAvatarThumbnail() {
		if (!$this->AvatarID) return false;

		return $this->Avatar()->setWidth(200);
	}
}