<?

class ZendBasics_Form_Element_ReCaptcha extends Zend_Form_Element_Captcha {

	public function init() {
		$this->setCaptcha('ReCaptcha', array('captcha' => 'ReCaptcha','service' => new ZendBasics_Service_ReCaptcha()));
	}

}
