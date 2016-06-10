<?php

use Phalcon\Filter;

class ReservasController  extends ControllerBase{

   public function indexAction() {

       $this->view->pick("reservas/index");
    }
    
    public function ajaxPostAction() {
        $request = new \Phalcon\Http\Request();
        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        $filter = new Filter();
        //si es una petición get
        if ($request->isPost()) {
            //si es una petición ajax
            if ($request->isAjax()) {
                //los datos quedan limpios automáticamente
                $name = $filter->sanitize($request->getPost("name"), "string");
                $email = $filter->sanitize($request->getPost("email"), "email");
                $date = $filter->sanitize($request->getPost("date"), "string");
                $time = $filter->sanitize($request->getPost("time"), "string");
                $phone = $filter->sanitize($request->getPost("phone"), "int");
                $pax = $filter->sanitize($request->getPost("pax"), "int");
                $comment = $filter->sanitize($request->getPost("observation"), "string");


                if ($email && $name && $date && $time && $phone) {
                    $reserva = new Booking;
                    $reserva->email = $email;
                    $reserva->name = $name;
                    $reserva->date = $date;
                    $reserva->pax = $pax;
                    $reserva->time = $time;
                    $reserva->telephone = $phone;
                    $reserva->observation = $comment;
                    $reserva->shift = ($reserva->time == ("21:00") || $reserva->time == ("20:30") || $reserva->time == ("21:30")) ? "noche" : "dia";
                    $booking = Booking::find([
                                "conditions" => "shift = ?0 AND date = ?1",
                                "bind" => [$reserva->shift, $reserva->date]
                    ]);
                    $avalible = 0;
                    $requestShift = $reserva->shift == "noche" ? "23:00" : "15:30";
                    foreach ($booking as $b) {
                        $avalible += $b->pax;
                    }

                    if (($avalible + $reserva->pax) <= 50) {
                        if ($reserva->save()) {
                            $response->setStatusCode(200, "OK");
                            $this->email($reserva->id, $reserva->name, $reserva->date, $reserva->time, $reserva->pax);
                            $send = ("Su reserva ha sido realizada correctamente, para el " .
                                    $date . " a las " . $time . " a nombre de " . $name . ". Le hemos mandado un email de confirmación con su"
                                    . " identificador de reserva, por favor, si no puede asistir cancele su reserva con en link proporcionado en email o llamando al 680 625 214.");
                            $response->setJsonContent($send)->send();
                            die;
                        } else {
                            $response->setStatusCode(500, "No se ha podido procesar");
                            $send = ("Lo sentimos, no se ha podido procesar");
                            $send = "No se ha guardado";
                            $response->setJsonContent($reserva)->send();
                            die;
                        }
                    } else {
                        $send = ("Lo siento mucho, pero no quedan reservas para tantas personas "
                                . "para este turno. Puede probar a pasarse sobre las " . $requestShift
                                . ", cuando las mesas del primer turno hayan terminado, aunque desafortunadamente"
                                . " no aceptamos reservas a esa hora.");
                        $response->setStatusCode(200, "OK");
                        //$send= "no quedan plazas";
                        $response->setJsonContent($send)->send();
                        die;
                    }
                    $send = "Limbo 1";
                    $response->setJsonContent($send)->send();
                    die;
                }
            }
        }
    }

    public function cancelarAction($id) {
        $reserva = Booking::findFirstById($id);
        if ($reserva){
        $this->view->b = $reserva;
        if ($this->request->isPost()) {
            if($reserva->delete()){
            $this->flashSession->success('Reserva cancelada');
            $this->response->redirect('reservas');
            } else {
             $this->flashSession->error('Lo sentimos, pero hubo un error borrando la reserva');   
            }
        }
        $this->view->pick("reservas/cancelar");
        } else {
            $this->response->redirect('index');
        }
    }

    public function email($id, $nombre, $fecha, $hora, $pax) {
        //Email
        $mail = "Su Reserva ha sido tramitada correctamente \n Información de reserva: " . $pax . " personas par el día " . $fecha . " a las " . $hora . " a nombre de " . $nombre.
                "\n Por favor, si no pudiese asistir cancele su reserva accediendo a este link: www.laalvarteca.com/reservas/cancelar/" . $id;
        //Titulo
        $titulo = "Confirmación de reserva laAlvaroteca";
        //cabecera
        $headers = "MIME-Version: 1.0\r\n";
        $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
        //dirección del remitente 
        $headers .= "From: La Alvaroteca < noreply@laalvaroteca.com >\r\n";
        //Enviamos el mensaje a tu_dirección_email 
        mail("tu_dirección_email", $titulo, $mail, $headers) or die("");
        
    }

}