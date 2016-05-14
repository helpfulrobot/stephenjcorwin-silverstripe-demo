<?php
class Color extends StyleObject {
  /**
   * FIELDS
  */

  private static $db = array (
    'Name' => 'Text',
    'Value' => 'Text'
  );
  
  /**
   * DEFAULT RECORDS
   */

  private static $default_records = array (
    array (
      'Name' => 'Transparent',
      'Value' => 'transparent'
    ),
    array (
      'Name' => 'Black',
      'Value' => '#222222'
    ),
    array (
      'Name' => 'Black Moderate Transparent',
      'Value' => 'rgba(0,0,0,0.5)'
    ),
    array (
      'Name' => 'White',
      'Value' => '#FFFFFF'
    ),
    array (
      'Name' => 'Gray',
      'Value' => '#888888'
    ),
    array (
      'Name' => 'Gray Light',
      'Value' => '#DDDDDD'
    ),
    array (
      'Name' => 'Gray Lightest',
      'Value' => '#EEEEEE'
    ),
    array (
      'Name' => 'Red',
      'Value' => '#E61946'
    ),
    array (
      'Name' => 'Green',
      'Value' => '#3CB46E'
    ),
    array (
      'Name' => 'Blue',
      'Value' => '#0082C8'
    ),
    array (
      'Name' => 'Yellow',
      'Value' => '#FFD700'
    ),
    array (
      'Name' => 'Orange',
      'Value' => '#F56E23'
    ),
    array (
      'Name' => 'Sand',
      'Value' => '#F0EBE6'
    ),
    array (
      'Name' => 'Purple',
      'Value' => '#5F1EB4'
    ),
    array (
      'Name' => 'Facebook',
      'Value' => '#3B5998'
    ),
    array (
      'Name' => 'Twitter',
      'Value' => '#00ACEE'
    ),
    array (
      'Name' => 'YouTube',
      'Value' => '#C4302B'
    ),
    array (
      'Name' => 'LinkedIn',
      'Value' => '#0E76A8'
    ),
    array (
      'Name' => 'Behance',
      'Value' => '#053EFF'
    ),
    array (
      'Name' => 'Sound Cloud',
      'Value' => '#FF7700'
    ),
    array (
      'Name' => 'GitHub',
      'Value' => '#3B5998'
    ),
    array (
      'Name' => 'Instagram',
      'Value' => '#3F729B'
    ),
    array (
      'Name' => 'Dribbble',
      'Value' => '#EA4C89'
    )
  );

  /**
   * CONFIGURATION
   */

  private static $default_sort='Name ASC';

  private static $summary_fields = array (    
    'Name' => 'Name',
    'Value' => 'Value',
    'CMSPreview' => 'Preview'
  );

  public static $reset_references = array (
    
  );

  public static $delete_references = array (

  );

  /**
   * CMS FIELDS
   */

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    
    /**
     * MAIN TAB
     */

    $tab = 'Root.Main';

    $field = new TextField('Name');
    $fields->addFieldToTab($tab, $field);

    $field = new TextField('Value');
    $fields->addFieldToTab($tab, $field);

    $html = ViewableData::renderWith('Color_CMS_Preview');
    $field = new LiteralField('Preview', $html);
    $fields->addFieldToTab($tab, $field);
    
    return $fields;
  }

  public function getCMSPreview() {
    $html = ViewableData::renderWith('Color_CMS_Preview');
    $obj = HTMLText::create();
    $obj->setValue($html);
    return $obj;
  }
}