<?php 
abstract class Trabalho_Controller_Action extends Zend_Controller_Action{

	public function preDispatch(){
		$session = new Zend_Session_Namespace('session');
		if(!isset($session->user)){
			if($this->getRequest()->getControllerName() != "login"  )
				$this->redirect("/login");
		}
	}
}
?>