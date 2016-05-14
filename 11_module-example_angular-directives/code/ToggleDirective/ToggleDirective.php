<?php
class ToggleDirective extends AngularDirective {
  public static $site_tree_available = true;

  /**
   * FIELDS
   */
  private static $db = array (
    'PrimaryContent' => 'HTMLText',
    'SecondaryContent' => 'HTMLText',
    'SecondaryContent' => 'HTMLText'
  );

  private static $has_one = array (
    'Icon' => 'Icon'
  );

  /**
   * CMS FIELDS
   */
  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $tab = 'Root.Main';
    $field = new HTMLEditorField('PrimaryContent', 'Primary Content');
    $fields->addFieldToTab($tab, $field);

    $field = new HTMLEditorField('SecondaryContent', 'Secondary Content');
    $fields->addFieldToTab($tab, $field);

    $data = DataObject::get('Icon');
    $field = new DropdownField('IconID', 'Swap Icon');
    $field->setSource($data->map('ID', 'Name')->toArray());
    $field->setEmptyString('Select one');
    $fields->addFieldToTab($tab, $field);

    return $fields;
  }

  public function updateOptions(&$options) {
    $options->push($this->generateOption('primary-content', $this->PrimaryContent));
    $options->push($this->generateOption('secondary-content', $this->SecondaryContent));
    $options->push($this->generateOption('icon', $this->Icon()->ClassName));
  }
}