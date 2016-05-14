<?php
class DP_TemplateControlsPage extends DemonstrationPage {

	private static $db = array(
		'ExampleVariableTitle' => 'Text',
		'ExampleVariablePrompt' => 'HTMLText',
		'ExampleVariable' => 'Text',

		'ExampleIfConditionTitle' => 'Text',
		'ExampleIfConditionPrompt' => 'HTMLText',
		'ExampleIfConditionToggle' => 'Boolean',
		'ExampleIfConditionContent' => 'Text',

		'ExampleIfElseConditionTitle' => 'Text',
		'ExampleIfElseConditionPrompt' => 'HTMLText',
		'ExampleIfElseConditionToggle' => 'Boolean',
		'ExampleIfElseConditionToggleTrueContent' => 'Text',
		'ExampleIfElseConditionToggleFalseContent' => 'Text',

		'ExampleLoopingTitle' => 'Text',
		'ExampleLoopingPrompt' => 'HTMLText',
	);

	private static $has_many = array(
		'ExampleLoopingItems' => 'ExampleLoopingItem'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		// VARIABLE
		$tab = 'Root.Examples.Variable';
		$field = new TextField('ExampleVariableTitle');
    	$fields->addFieldToTab($tab, $field);

		$field = new HTMLEditorField('ExampleVariablePrompt');
    	$fields->addFieldToTab($tab, $field);

		$field = new TextField('ExampleVariable');
    	$fields->addFieldToTab($tab, $field);

    	// IF
    	$tab = 'Root.Examples.IfCondition';
    	$field = new TextField('ExampleIfConditionTitle');
    	$fields->addFieldToTab($tab, $field);

    	$field = new HTMLEditorField('ExampleIfConditionPrompt');
    	$fields->addFieldToTab($tab, $field);

    	$field = new CheckboxField('ExampleIfConditionToggle');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextareaField('ExampleIfConditionContent');
    	$fields->addFieldToTab($tab, $field);

    	// IF/ELSE
    	$tab = 'Root.Examples.IfElseCondition';
    	$field = new TextField('ExampleIfElseConditionTitle');
    	$fields->addFieldToTab($tab, $field);

    	$field = new HTMLEditorField('ExampleIfElseConditionPrompt');
    	$fields->addFieldToTab($tab, $field);

    	$field = new CheckboxField('ExampleIfElseConditionToggle');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextareaField('ExampleIfElseConditionToggleTrueContent');
    	$fields->addFieldToTab($tab, $field);

    	$field = new TextareaField('ExampleIfElseConditionToggleFalseContent');
    	$fields->addFieldToTab($tab, $field);

    	// Looping
    	$tab = 'Root.Examples.Looping';
    	$field = new TextField('ExampleLoopingTitle');
    	$fields->addFieldToTab($tab, $field);

    	$field = new HTMLEditorField('ExampleLoopingPrompt');
    	$fields->addFieldToTab($tab, $field);

    	$conf=GridFieldConfig_RelationEditor::create(10);
    	$conf->addComponent(new GridFieldSortableRows('SortOrder'));
    	$fields->addFieldToTab($tab, new GridField('ExampleLoopingItems', 'Items', $this->ExampleLoopingItems(), $conf));

		return $fields;
	}
}

class DP_TemplateControlsPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}

}
