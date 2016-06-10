<?php

class ErrorsController extends ControllerBase
{
    public function show404Action()
    {
        $this->view->pick('errors/show404');
    }

    public function show401Action()
    {
         $this->view->pick('errors/show401');
    }

    public function show500Action()
    {
         $this->view->pick('errors/show500');
    }
}
