<?php
class DP_ModuleExample_AngularDirectivesPage extends DemonstrationPage {

	private static $db = array(
		
	);

	private static $has_one = array(
		'ActiveDirective' => 'AngularDirective'
	);

	private static $has_many = array(
		'Directives' => 'AngularDirective'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$tab = 'Root.Main';
		$tab = 'Root.Examples';

		// only need this field if there are items to choose from
        if (count($this->Directives()) > 0) {
	        $field = new DropdownField('ActiveDirectiveID', 'Active Directive');
		    $field->setSource($this->Directives()->map('ID', 'Name')->toArray());
		    $field->setEmptyString('Select one');
		    $fields->addFieldToTab($tab, $field);
        }

    	$conf=GridFieldConfig_RelationEditor::create(10);
	    $conf->removeComponentsByType('GridFieldAddNewButton');
	    $conf->addComponent(new GridFieldDeleteAction());
	    $conf->addComponent(new GridFieldAddNewMultiClass());    
	    $conf->getComponentByType('GridFieldAddNewMultiClass')->setClasses($this->getAvailableDirectiveClasses());
	    $conf->removeComponentsByType('GridFieldPaginator');
	    $conf->removeComponentsByType('GridFieldPageCount');
	    $field = new GridField('AngularDirective', 'Directives', $this->Directives(), $conf);
	    $fields->addFieldToTab($tab, $field);

		return $fields;
	}

	public function getAvailableDirectiveClasses() {
	    $data = ClassInfo::subclassesFor('AngularDirective');

	    foreach ($data as $class) {
	      if (!$class::$site_tree_available) unset($data[$class]); 
	    }

	    return $data;
	}
}

class DP_ModuleExample_AngularDirectivesPage_Controller extends DemonstrationPage_Controller {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
}
