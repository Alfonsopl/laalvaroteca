<?php
use Phalcon\Mvc\Controller;

class IndexController extends ControllerBase
{
    public function indexAction()
    {
        $setMenus = SetMenu::find();
         $this->view->pick("index/index");
    }
}
