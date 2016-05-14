<?php
class ExampleDataModel extends DataObject {
	private static $db = array(
		'FirstName' => 'Text',
		'LastName' => 'Text',
		'Greeting' => 'Text'
	);

	private static $has_one = array(
		'Page' => 'DP_DataModelPage'
	);

	private static $default_sort = 'FirstName ASC';

	private static $summary_fields = array(
		'FirstName' => 'First',
		'LastName' => 'Last'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('PageID');

		$tab = 'Root.Main';

		$field = new TextField('FirstName');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextField('LastName');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextField('Greeting');
    	$fields->addFieldToTab($tab, $field);

		return $fields;
	}

	public function getDoGreeting() {
		return $this->FirstName . " " . $this->LastName . ' says,"'. $this->Greeting . '"';
	}
}