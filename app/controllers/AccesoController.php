<?php

/**
 * SessionController
 *
 * Allows to authenticate users
 */

class AccesoController extends ControllerBase
{
    public function indexAction()
    {   
        if (!$this->isLogged()){
            if ($this->request->isPost()) {    
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');
            $user = Users::findFirst([
                'conditions' => "email = ?0",
                'bind' => [$email]
                    ]);
             if ($user) {
                if ($this->security->checkHash($password, $user->password)) {
                     $this->registerSession($user);
                $this->flash->success('Bienvenido ' . $user->name);
               // return $this->forward('panelcontrol/index');
                return $this->response->redirect('panelcontrol');
                }
            }
            $this->flash->error('Wrong email/password');
            }

            $this->view->pick('acceso/index');
        } else {
            return $this->forward('panelcontrol');
        }
    }
    
    
    
    /**
     * Register an authenticated user into session data
     *
     * @param Users $user
     */
    private function registerSession(Users $user)
    {
        $this->session->set('auth', array(
            'id' => $user->id,
            'name' => $user->name,
            'is_admin' => $user->is_admin,
        ));
    }        
    /**
     * Finishes the active session redirecting to the index
     *
     * @return unknown
     */
    public function endAction()
    {
        $this->session->remove('auth');
        $this->flash->success('¡Hasta la vista!');
        return $this->response->redirect('acceso');
    }
}
