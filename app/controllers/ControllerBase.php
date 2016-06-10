<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
     
    protected function forward($uri)
    {
        $uriParts = explode('/', $uri);
        $params = array_slice($uriParts, 2);
    	return $this->dispatcher->forward(
    		array(
    			'controller' => $uriParts[0],
    			'action' => $uriParts[1],
                'params' => $params
    		)
    	);
    }
    
    protected function isLogged(){
        if ($this->session->get('auth')){
            return true;
        } else {
            return false;
        }
        
    }
    
    protected function isAdmin(){
        if($this->session->get('auth')['is_admin']){
            return true;
        } else {
            return false;
        }
    }
    
    protected function userId(){
        return ($this->session->get('auth')['id']);
    }
    
}
