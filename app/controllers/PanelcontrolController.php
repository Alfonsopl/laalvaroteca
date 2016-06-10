<?php

class PanelcontrolController extends ControllerBase
{
    public function indexAction()
    {
        if ($this->isLogged()){
         $this->view->pick("panelcontrol/index");
        } else {
        $this->response->redirect('index');
        }
    }
}
