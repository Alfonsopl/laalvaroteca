<?php

class PanelmenudiaController extends ControllerBase {

    public function indexAction() {
        if ($this->isLogged()) {
            $menus = SetMenu::find(["order" => "type"]);
            $this->view->menus = $menus;
            $this->view->pick("panelmenudia/index");
        } else {
            $this->response->redirect('index');
        }
    }

    public function BorrarAction($id) {
        if ($this->isLogged()) {
            $menu = SetMenu::findFirstById($id);
            if ($menu->delete()) {
                $this->flash->success('El plato ' . $menu->name . ' ha sido borrado correctamente.');
            } else {
                $this->flash->error('Lo sentimos, pero hubo un error borrando ' . $menu->name);
            }
            $this->response->redirect('panelmenudia');
        } else {
            $this->response->redirect('index');
        }
    }

    public function NuevoAction() {
        if ($this->isLogged()) {
            $form = new MenudiaForm(new SetMenu());
            if ($this->request->isPost()) {
                $menu = $form->getEntity();
                $form->bind($_POST, $menu);

                if ($form->isValid()) {
                    if ($menu->create()) {
                        $this->flashSession->success('Su plato se ha introducido correctamente');
                        return $this->response->redirect('panelmenudia');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->menu = false;
            $this->view->form = $form;
            $this->view->pick('panelmenudia/edit');
        } else {
            $this->response->redirect('index');
        }
    }

    public function ModificarAction($id) {
        if ($this->isLogged()) {
            $menu = SetMenu::findFirstById($id);
            $form = new MenudiaForm($menu);
            if ($this->request->isPost()) {
                $menu = $form->getEntity();
                $form->bind($_POST, $menu);

                if ($form->isValid()) {
                    if ($menu->save()) {
                        $this->flashSession->success('Su plato ha sido modificado correctamente');
                        return $this->response->redirect('panelmenudia');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->menu = $menu->id;
            $this->view->form = $form;
            $this->view->pick('panelmenudia/edit');
        } else {
            $this->response->redirect('index');
        }
    }

}
