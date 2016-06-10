<?php
use Phalcon\Mvc\Controller;



class CartaController extends ControllerBase
{
    public function indexAction()
    {
        $secciones = MenuSection::find(['order' => 'position']);
        $platos = Menu::find();
        $this->view->secciones=$secciones;
        $this->view->platos=$platos;
        $this->view->pick("carta/index");
    }
}
