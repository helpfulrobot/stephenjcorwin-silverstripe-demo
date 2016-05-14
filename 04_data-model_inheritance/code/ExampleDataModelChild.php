<?php
class ExampleDataModelChild extends ExampleDataModel {
	private static $db = array(
		'Extra' => 'Text'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';

		$field = new TextField('Extra');
    	$fields->addFieldToTab($tab, $field);

		return $fields;
	}

	public function getDoGreeting() {
		return parent::getDoGreeting() . ' ' . $this->Extra;
	}
}