<?php
use Phalcon\Mvc\Controller;



class MenudegustacionController extends ControllerBase
{
    public function indexAction()
    {
        $this->view->pick("menudegustacion/index");
    }
}
