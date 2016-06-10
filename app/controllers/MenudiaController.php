<?php

class MenudiaController extends ControllerBase
{
    public function indexAction()
    {
        $menus = SetMenu::find(["order" => "type"]);
        $this->view->menus = $menus;
        $this->view->pick("menudia/index");
    }
}
