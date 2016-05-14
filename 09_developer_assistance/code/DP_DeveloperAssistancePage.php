<?php
class DP_DeveloperAssistancePage extends DemonstrationPage {

	private static $db = array(
		
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		return $fields;
	}
}

class DP_DeveloperAssistancePage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
