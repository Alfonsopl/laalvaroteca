<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Numeric;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\InclusionIn;


class ReservasForm extends Form
{

    public function initialize()
    {
        // Name
        $name = new Text('name');
        $name->setLabel('nombre');
        $name->setFilters(array('striptags', 'string', 'trim'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor introduzca el nombre'
            ))
        ));
        $this->add($name);
                
        $date = new Text('date');
        $date->setLabel('date');
        $date->setFilters(array('striptags', 'string', 'trim'));
        $date->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor introduzca fecha'
            ))
        ));
        $this->add($date);
        
        $time = new Select('time', [
            "13:30" => "13:30",
            "14:00" => "14:00",
            "14:30" => "14:30",
            "20:30" => "20:30",
            "21:00" => "21:00",
            "21:30" => "21:30",       
        ]);
        $time->setLabel('time');
        $time->setFilters(array('striptags', 'string', 'trim'));
        $time->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor introduzca hora'
            ))
        ));
        $this->add($time);
        
         $observation = new TextArea('observation');
        $observation->setLabel('observation');
        $observation->setFilters(array('striptags', 'string', 'trim'));
        $this->add($observation);
        
          $telephone = new Text('telephone');
        $telephone->setLabel('telephone');
        $telephone->setFilters(array('striptags', 'int', 'trim'));
        $this->add($telephone);
        
        
        $email = new Text('email');
        $email->setLabel('email');
        $email->setFilters(array('striptags', 'email', 'trim'));
        $this->add($email);
        
        $pax = new Numeric ('pax', ['min'=> 1]);
        $pax->setLabel('pax');
        $pax->setFilters(array('striptags', 'int', 'trim'));
        $this->add($pax);
    
    }
}