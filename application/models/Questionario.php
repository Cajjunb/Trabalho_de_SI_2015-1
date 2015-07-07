<?php

class Application_Model_Questionario extends Zend_Db_Table_Abstract
{
	protected $_name = "tb_questionario";
	protected $_primary = "idQuestionario";

	public function cadastroQuestionario($data)
	{
		if($this->validaVarchar(500,$data['enunciadoQuestao']))
			return "enunciado Invalido"; 
		if($this->validaVarchar(500,$data['enunciadoQuestao']))
			return ""; 

		$this->insert($data);
	}

	public function validaVarchar($sizeof,$data){
	]	$flag = true;
		if(sizeof($data)>$sizeof){
			$flag = false;
		}
		else if(ctype_alnum($data)){
			$flag = false;
		}
		return flag;
	}

}