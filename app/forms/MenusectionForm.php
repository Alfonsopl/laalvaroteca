<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Numeric;
use Phalcon\Validation\Validator\PresenceOf;


class MenusectionForm extends Form
{

    public function initialize()
    {
        // Name
        $name = new Text('section');
        $name->setLabel('nombre');
        $name->setFilters(array('striptags', 'string', 'trim'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor introduzca el nombre de la sección'
            ))
        ));
        $this->add($name);
        
        $position = new Numeric('position', array(
            'min' => 0,
        ));
        $position->setLabel('posición');
        $position->setFilters(array('striptags', 'int', 'trim'));
        $this->add($position);
  
    }
}