<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	protected function _initDatabase()
    { 
        $config = $this->getoptions();
        $db = Zend_Db::factory(
            $config["database"]['adapter'],
            $config["database"]['params']
            );
        Zend_Db_Table_Abstract::setDefaultAdapter($db); // setting up the db adapter to DbTable  
    }  

}

