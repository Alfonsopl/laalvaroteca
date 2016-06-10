<?php

class PanelcartaController extends ControllerBase {

    public function indexAction() {
        if ($this->isLogged()) {
            $request = new \Phalcon\Http\Request();
            $secciones = MenuSection::find(['order' => 'section']);
            $order = $request->getQuery("seccion");
            if (!$order || $order == "all") {
                $carta = Menu::find(["order" => "menu_section"]);
                $this->view->selected = "all";
            } else {
                $carta = Menu::find([
                            'order' => 'menu_section',
                            'conditions' => "menu_section = ?0",
                            'bind' => [$order]
                ]);
                $this->view->selected = $order;
            }
            $menuSection = [];
            foreach ($secciones as $seccion) {
                $menuSection[$seccion->id] = $seccion->section;
            }
            
            $this->view->seccion = $secciones;
            $this->view->secciones = $menuSection;
            $this->view->platos = $carta;
            $this->view->data = json_encode($carta->toArray());
            $this->view->pick('panelcarta/index');
        } else {
            $this->response->redirect('index');
        }
    }
    
    public function borrarplatoAction($id) {

        if ($this->isLogged()) {
            $plato = Menu::findFirstById($id);
            if ($plato->delete()) {
                $this->flashSession->success('El plato ha sido borrada correctamente.');
            } else {
                $this->flashSession->error('Lo sentimos, pero hubo un error borrando el plato');
            }
            return $this->response->redirect('panelcarta');
        } else {
            $this->response->redirect('index');
        }
    }


    public function nuevoplatoAction() {
        if ($this->isLogged()) {
            $form = new CartaForm(new Menu());
            if ($this->request->isPost()) {
                $plato = $form->getEntity();
                $form->bind($_POST, $plato);

                if ($form->isValid()) {
                    if ($this->request->hasFiles()) {
                        foreach ($this->request->getUploadedFiles() as $file) {
                            if ($file->getName()) {
                                // Move the file into the application
                                $plato->image = 'assets/image/carta/' . $file->getName();
                                $file->moveTo('assets/image/carta/' . $file->getName());
                            }
                        }
                    }
                    if ($plato->create()) {
                        $this->flashSession->success('Su plato se ha introducido correctamente');
                        return $this->response->redirect('panelcarta');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->plato = false;
            $this->view->carta = false;
            $this->view->form = $form;
            $this->view->pick('panelcarta/edit');
        } else {
            $this->response->redirect('index');
        }
    }

    public function editarplatoAction($id) {
        if ($this->isLogged()) {
            $plato = Menu::findFirstById($id);
            $form = new CartaForm($plato);
            if ($this->request->isPost()) {
                $plato = $form->getEntity();
                $form->bind($_POST, $plato);

                if ($form->isValid()) {
                    if ($this->request->hasFiles()) {
                        foreach ($this->request->getUploadedFiles() as $file) {
                            if ($file->getName()) {
                                $platoBorrar= $plato->image;
                                // Move the file into the application
                                $plato->image = 'assets/image/carta/' . $file->getName();
                                $platoIntroducir = $plato->image;
                                $file->moveTo('assets/image/carta/' . $file->getName());
                            }
                        }
                    }
                    if ($plato->save()) {
                        unlink($platoBorrar);
                        $this->flashSession->success('Su plato se ha modificado correctamente');
                        return $this->response->redirect('panelcarta');
                    } else {
                        unlink($platoIntroducir);
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->plato = $plato;
            $this->view->carta = $id;
            $this->view->form = $form;
            $this->view->pick('panelcarta/edit');
        } else {
            $this->response->redirect('index');
        }
    }

    public function seccionesAction() {
        if ($this->isLogged()) {
            $secciones = MenuSection::find(['order' => 'position']);
            $this->view->secciones = $secciones;
            $this->view->pick('panelcarta/secciones');
        } else {
            $this->response->redirect('index');
        }
    }

    public function editarseccionAction($id) {
        if ($this->isLogged()) {
            $secction = MenuSection::findFirstById($id);
            $form = new MenusectionForm($secction);
            if ($this->request->isPost()) {
                $menu = $form->getEntity();
                $form->bind($_POST, $menu);

                if ($form->isValid()) {
                    if ($menu->save()) {
                        $this->flashSession->success('Su sección se ha modificado correctamente');
                        return $this->response->redirect('panelcarta/secciones');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->menu = $id;
            $this->view->form = $form;
            $this->view->pick('panelcarta/editseccion');
        } else {
            $this->response->redirect('index');
        }
    }

    public function nuevaseccionAction() {
        if ($this->isLogged()) {
            $form = new MenusectionForm(new MenuSection());
            if ($this->request->isPost()) {
                $menu = $form->getEntity();
                $form->bind($_POST, $menu);

                if ($form->isValid()) {
                    if ($menu->create()) {
                        $this->flashSession->success('Su sección se ha introducido correctamente');
                        return $this->response->redirect('panelcarta/secciones');
                    } else {
                        $this->flash->error($menu->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->menu = false;
            $this->view->form = $form;
            $this->view->pick('panelcarta/editseccion');
        } else {
            $this->response->redirect('index');
        }
    }

    public function borrarseccionAction($id) {

        if ($this->isLogged()) {
            $seccion = MenuSection::findFirstById($id);
            if ($seccion->delete()) {
                $this->flashSession->success('La sección ha sido borrada correctamente.');
            } else {
                $this->flashSession->error('Lo sentimos, pero hubo un error borrando la sección');
            }
            return $this->response->redirect('panelcarta/secciones');
        } else {
            $this->response->redirect('index');
        }
    }

}
