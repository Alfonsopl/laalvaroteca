<?php

class PanelreservasController extends ControllerBase
{
    public function indexAction() {
        if ($this->isLogged()) {
            $request = new \Phalcon\Http\Request();
            $order = $request->getQuery("dia");
            if (!$order) {
                $day = date("m/d/Y");
            }    else {
                $day = $order;
            }
               $dayBooking = Booking::find([
                            'order' => 'time',
                            'conditions' => "date = ?0 AND shift = 'dia'",
                            'bind' => [$day]
                ]);
               $dd = 0;
               foreach ($dayBooking as $d){
                   $dd += $d->pax;
               }
               $nightBooking = Booking::find([
                            'order' => 'time',
                            'conditions' => "date = ?0 AND shift = 'noche'",
                            'bind' => [$day]
                ]);
               $nd = 0;
               foreach ($nightBooking as $d){
                   $nd += $d->pax;
               }
            $this->view->selected = $day;
            $this->view->dayDay = $dd;
            $this->view->nightDay = $nd;
            $this->view->dbookings = $dayBooking;
            $this->view->nbookings = $nightBooking;
            $this->view->pick("panelreservas/index");
        } else {
            $this->response->redirect('index');
        }
    }

    public function BorrarAction($id) {
        if ($this->isLogged()) {
            $booking = Booking::findFirstById($id);
            if ($booking->delete()) {
                $this->flash->success('La reserva ha sido borrada correctamente.');
            } else {
                $this->flash->error('Lo sentimos, pero hubo un error borrando la reserva');
            }
            $this->response->redirect('panelreservas?dia=' . $var[1]);
        } else {
            $this->response->redirect('index');
        }
    }

    public function NuevoAction() {
        if ($this->isLogged()) {
            $form = new ReservasForm(new Booking());
            if ($this->request->isPost()) {
                $booking = $form->getEntity();
                $form->bind($_POST, $booking);

                if ($form->isValid()) {
                    $booking->shift = $booking->time > "18:00"? "noche" : "dia" ;
                    if ($booking->create()) {
                        $this->flashSession->success('Su reserva se ha introducido correctamente');
                        return $this->response->redirect('panelreservas?dia='. $booking->date);
                    } else {
                        $this->flash->error($booking->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->reserva = false;
            $this->view->form = $form;
            $this->view->pick('panelreservas/edit');
        } else {
            $this->response->redirect('index');
        }
    }

    public function ModificarAction($id) {
        if ($this->isLogged()) {
            $booking = Booking::findFirstById($id);
            $form = new ReservasForm($booking);
            if ($this->request->isPost()) {
                $booking = $form->getEntity();
                $form->bind($_POST, $booking);

                if ($form->isValid()) {
                    if ($booking->save()) {
                        $this->flashSession->success('Su reserva se ha sido modificado correctamente');
                        return $this->response->redirect('panelreservas?dia='.$booking->date);
                    } else {
                        $this->flash->error($booking->getMessages()[0]);
                    }
                } else {
                    $this->flash->error('Por favor, revisa tus errores');
                }
            }
            $this->view->reserva = $booking->id;
            $this->view->form = $form;
            $this->view->pick('panelreservas/edit');
        } else {
            $this->response->redirect('index');
        }
    }

}
