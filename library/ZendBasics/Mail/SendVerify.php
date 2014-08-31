<?
// here should be implemented logic for restration procedure

class ZendBasics_Mail_SendVerify extends Zend_Mail {
	protected $_verifyCode;
	protected $_member;
	protected $_host;

	public function getVerifyCode() {
		return $this->_verifyCode;
	}

	public function setVerifyCode(ZendBasics_Model_MembersVerify $value) {
		$this->_verifyCode = $value;
	}

	public function getMember() {
		return $this->_member;
	}

	public function setMember(ZendBasics_Model_Member $value) {
		$this->_member = $value;
	}

	public function setHost($host) {
		$this->_host = $host;
	}

	public function getHost() {
		return $this->_host;
	}

	public function sendEmail() {

		$renderer = new Zend_View();
		$includePathOptions = Zend_Controller_Front::getInstance()->getParam('bootstrap')->getApplication()->getOption('includePaths');
		$renderer->setScriptPath($includePathOptions['library'] . '/ZendBasics/Mail/Templates/');
		$renderer->assign('member', $this->getMember());
		$renderer->assign('verifyCode', $this->getVerifyCode());
		$renderer->assign('host', $this->getHost());

		$mail = new Zend_Mail('UTF-8');
		$mail->setFrom('dontreplay@game.mydev.org.ua');
		$mail->setBodyHtml($renderer->render('VerifyCode.phtml'));
		$mail->addTo($this->getMember()->email, 'recipient');
		$mail->addBcc(array('zero.ukr@gmail.com', 'alex0germ@gmail.com'), 'recipient');
		$mail->setSubject('Ви зареєструвались.');
		$mail->send();
	}
}
