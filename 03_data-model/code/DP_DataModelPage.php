<?php
class DP_DataModelPage extends DemonstrationPage {

	private static $db = array(
	);

	private static $has_many = array(
		'ExampleDataModelItems' => 'ExampleDataModel'
	);

	private static $has_one = array(
		'ActiveItem' => 'ExampleDataModel'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('ActiveItemID');

		$tab = 'Root.Main';
		$tab = 'Root.Examples';

        // only need this field if there are items to choose from
        if (count($this->ExampleDataModelItems()) > 0) {
	        $field = new DropdownField('ActiveItemID', 'Active Item');
		    $field->setSource($this->ExampleDataModelItems()->map('ID', 'FirstName')->toArray());
		    $field->setEmptyString('Select one');
		    $fields->addFieldToTab($tab, $field);
        }

    	$conf=GridFieldConfig_RelationEditor::create(10);
    	$fields->addFieldToTab($tab, new GridField('ExampleDataModel', 'DataModels', $this->ExampleDataModelItems(), $conf));

		return $fields;
	}
}

class DP_DataModelPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

}
