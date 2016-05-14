<?php
class String_Extension extends Extension {
    public function AngularCase($returnValue = '') {
        $value = $this->owner->value;
        if ($value == null) return;

        $strlen = strlen($value);
        for ($i=0; $i < $strlen; $i++) {
            $char = $value[$i];
            $newChar = $char;
            if ($i && ctype_upper($char)) $newChar = '-' . $newChar;

            $returnValue .= $newChar;
        }

        return strtolower($returnValue);
    }

    public function CommaDeliminate($returnValue = '') {
        $value = $this->owner->value;
        if ($value == null) return;

        // remove whitespace
        $value = trim($value);

        // replace multiple spaces with one
        $value = preg_replace("/[[:blank:]]+/"," ", $value);

        // replace remaining spaces with a comma
        $value = str_replace(" ", ",", $value);

        return $value;
    }
}