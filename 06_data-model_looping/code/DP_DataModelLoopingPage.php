<?php
class DP_DataModelLoopingPage extends DemonstrationPage {

	private static $db = array(
		
	);

	private static $has_many = array(
		'ExampleLoopingItems' => 'ExampleLoopingItem'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$tab = 'Root.Main';
		$tab = 'Root.Examples';

    	$conf=GridFieldConfig_RelationEditor::create(10);
    	$conf->addComponent(new GridFieldSortableRows('SortOrder'));
    	$fields->addFieldToTab($tab, new GridField('ExampleLoopingItems', 'Items', $this->ExampleLoopingItems(), $conf));

		return $fields;
	}
}

class DP_DataModelLoopingPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

}
