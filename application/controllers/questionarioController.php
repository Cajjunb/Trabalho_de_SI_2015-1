<?php

class LoginController extends Trabalho_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
    	$session = new Zend_Session_Namespace('session');
    	$session->user = null;
        if($this->getRequest()->isPost()){
        	$model = new Application_Model_Login();
        	$logged = $model->loginUser(
        		$this->getParam('login'),
        		$this->getParam('password')
        	);

	        if($logged) {
	   			$this->redirect("/");
	        }

	        $this->view->errorMessage = "Usuário incorreto";
        }
    }


}

?>