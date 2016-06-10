<?php

class DocumentationController extends ControllerBase
{
    public function indexAction()
    {
         $this->view->pick("documentation/index");
    }
}
