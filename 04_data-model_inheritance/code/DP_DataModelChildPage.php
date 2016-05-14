<?php
class DP_DataModelChildPage extends DP_DataModelPage {

	private static $db = array(
	);

	private static $has_many = array(
		'ExampleDataModelItems' => 'ExampleDataModelChild'
	);

	private static $has_one = array(
		'ActiveItem' => 'ExampleDataModelChild'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
}

class DP_DataModelChildPage_Controller extends DemonstrationPage_Controller {
	
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

}