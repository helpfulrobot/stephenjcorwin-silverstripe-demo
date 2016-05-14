<?php
class DP_ControllerActionsPage extends DemonstrationPage {

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

class DP_ControllerActionsPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
		'getobj',
		'getobjjson',
		'setobj'
	);

	public function init() {
		parent::init();

		Requirements::javascript(CONTROLLER_ACTIONS_JS_PATH);
	}

	public function getDynamicObject() {
		$data = new ArrayData(array(
			'FirstName' => $this->FirstName,
			'LastName' => $this->LastName,
			'Greeting' => $this->Greeting
		));

		return $data;
	}

	public function getobj() {
		return $this->renderWith('DP_ControllerActions_Result');
	}

	public function getobjjson() {
		return json_encode($this->getDynamicObject()->toMap());
	}

	public function setobj() {
		$page = Director::get_current_page();
		$fields = ['FirstName', 'LastName', 'Greeting'];

		foreach ($fields as $item) {
			$data = $_POST[$item];
			if (!isset($data)) continue;
			$page->$item = $data;
		}

		$page->write();

		return $this->getobj();
	}
}
