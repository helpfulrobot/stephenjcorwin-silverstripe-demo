<?php
class Icon_SiteConfigExtension extends DataExtension {
  /**
   * CMS FIELDS
   */
    
  public function updateCMSFields(FieldList $fields) {    
    /**
     * APPEARANCE TAB
     */

    $tab = 'Root.Appearance.StyleObjects.Icons';
    
    $conf=GridFieldConfig_RelationEditor::create(10);
    $conf->removeComponentsByType('GridFieldPaginator');
    $conf->removeComponentsByType('GridFieldPageCount');
    $data = DataObject::get('Icon');
    $field = new GridField('Icon', 'Icons', $data, $conf);
    $fields->addFieldToTab($tab, $field);
  }
}