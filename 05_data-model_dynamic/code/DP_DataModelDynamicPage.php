<?php
class DP_DataModelDynamicPage extends DemonstrationPage {

	private static $db = array(
		'FirstName' => 'Text',
		'LastName' => 'Text',
		'Greeting' => 'Text'
	);


	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		$field = new TextField('FirstName');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextField('LastName');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextField('Greeting');
    	$fields->addFieldToTab($tab, $field);


		return $fields;
	}
}

class DP_DataModelDynamicPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

	public function getDynamicObject() {
		$data = new ArrayData(array(
			'FirstName' => $this->FirstName,
			'LastName' => $this->LastName,
			'Greeting' => $this->Greeting
		));

		return $data;
	}
}
