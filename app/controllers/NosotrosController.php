<?php
use Phalcon\Mvc\Controller;

class NosotrosController extends ControllerBase
{
    public function indexAction()
    {
         $this->view->pick("nosotros/index");
    }
}
