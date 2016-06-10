<?php

class PanelusuariosController extends ControllerBase {

    public function indexAction() {
        if ($this->isLogged()) {
            $usuarios = Users::find();
            $this->view->userId = $this->userId();
            $this->view->admin = $this->isAdmin();
            $this->view->usuarios = $usuarios;
            $this->view->pick("panelusuarios/index");
        } else {
            $this->response->redirect('index');
        }
    }

    public function nuevoAction() {
        if ($this->isAdmin()) {
            $form = new RegistrarForm(new Users());
            if ($this->request->isPost()) {
                $user = $form->getEntity();
                $form->bind($_POST, $user);                
                if ($form->isValid()) {
                    $password = $user->password;
                    $user->password = $this->security->hash($password); 
                    if ($user->create()) {
                        $this->flashSession->success('Usuario creado correctamente');
                        return $this->response->redirect('panelusuarios');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->admin = $this->isAdmin();
            $this->view->user = false;
            $this->view->form = $form;
            $this->view->pick('panelusuarios/edit');
        } else {
            $this->response->redirect('panelusuarios');
        }
    }

    public function modificarAction($id) {
        if ($this->isLogged()) {
            $user = Users::findFirstById($id); 
            $form = new RegistrarForm($user);
            if ($this->request->isPost()) {
                $menu = $form->getEntity();
                $form->bind($_POST, $user);

                if ($form->isValid()) {
                    $password = $user->password;
                    $user->password = $this->security->hash($password);
                    $user->is_admin = $this->request->getPost('is_admin')? 1 : 0;
                    if ($user->save()) {
                        $this->flashSession->success('Usuario modificado correctamente');
                        return $this->response->redirect('panelusuarios');
                    } else {
                        $this->flash->error($user->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->admin = $this->isAdmin();
            $this->view->user = $user->id;
            $this->view->form = $form;
            $this->view->pick('panelusuarios/edit');
        } else {
            $this->response->redirect('index');
        }
    }

    public function borrarAction($id) {
        if ($this->isAdmin()) {
            $user = Users::findFirstById($id);
            if ($user->delete()) {
                $this->flash->success('El usuario ' . $menu->name . ' ha sido borrado correctamente.');
            } else {
                $this->flash->error('Lo sentimos, pero hubo un error borrando el usuario' . $menu->name);
            }
            $this->response->redirect('panelusuarios');
        } else {
            $this->response->redirect('panelcontrol');
        }
    }

}
