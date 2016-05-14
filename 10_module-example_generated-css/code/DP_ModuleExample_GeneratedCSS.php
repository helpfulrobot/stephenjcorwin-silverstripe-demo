<?php
class DP_ModuleExample_GeneratedCSS extends DemonstrationPage {

	private static $db = array(
		'ColorPrompt' => 'HTMLText',
		'IconPrompt' => 'HTMLText'
	);

	private static $has_one = array(
		'MyColor' => 'Color',
		'MyIcon' => 'Icon'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		$tab = 'Root.Examples.Color';
		$field = new HtmlEditorField('ColorPrompt');
    	$fields->addFieldToTab($tab, $field);

		$data = DataObject::get('Color');
		$field = new DropdownField('MyColorID', 'My Color');
	    $field->setSource($data->map('ID', 'Name')->toArray());
	    $field->setEmptyString('Select one');
	    $fields->addFieldToTab($tab, $field);

	    $tab = 'Root.Examples.Icon';
	    $field = new HtmlEditorField('IconPrompt');
    	$fields->addFieldToTab($tab, $field);

	    $data = DataObject::get('Icon');
	    $field = new DropdownField('MyIconID', 'My Icon');
	    $field->setSource($data->map('ID', 'Name')->toArray());
	    $field->setEmptyString('Select one');
	    $fields->addFieldToTab($tab, $field);

		return $fields;
	}
}

class DP_ModuleExample_GeneratedCSS_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
