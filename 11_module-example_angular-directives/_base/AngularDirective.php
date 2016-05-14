<?php
class AngularDirective extends DataObject {
  public static $site_tree_available = false;

  /**
   * FIELDS
   */

  private static $db = array (
    'Name' => 'Text'
  );

  private static $has_one = array (
    'Page' => 'SiteTree'
  );

  private static $summary_fields = array (    
    'Name' => 'Name',
    'ClassName' => 'Type'
  );

  /**
   * CMS FIELDS
   */

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->removeByName('PageID');

    $tab = 'Root.Main';

    $field = new TextField('Name');
    $fields->addFieldToTab($tab, $field);

    return $fields;
  }

  public function getOptions() {
    $options = new ArrayList();

    $this->updateOptions($options);

    return $options;
  }

  public function generateOption($key, $value) {
    $option = new ArrayData(array(
      'Key' => $key,
      'Value' => $value
    ));

    return $option;
  }

  public function updateOptions(&$options) {}

  public function getHTMLID($prefix=true) {
    $string = 'content-block-' . $this->ID;

    if ($prefix === true) {
      $string = '#' . $string;
    }

    return $string;
  }

  public function getRender() {
    return $this->renderWith('AngularDirective');
  }
}