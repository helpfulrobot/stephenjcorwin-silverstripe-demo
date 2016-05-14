<?php
class PdfViewerDirective extends AngularDirective {
  public static $site_tree_available = true;

  /**
   * FIELDS
   */
  private static $db = array (
    'URL' => 'LinkField'
  );

  /**
   * CMS FIELDS
   */
  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $tab = 'Root.Main';
    $field = new LinkFormField('URL', 'PDF URL');
    $fields->addFieldToTab($tab, $field);

    return $fields;
  }

  public function updateOptions(&$options) {
    $options->push($this->generateOption('url', $this->URL));
  }
}