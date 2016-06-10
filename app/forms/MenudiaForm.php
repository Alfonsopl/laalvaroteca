<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\InclusionIn;


class MenudiaForm extends Form
{

    public function initialize()
    {
        // Name
        $name = new Text('name');
        $name->setLabel('nombre');
        $name->setFilters(array('striptags', 'string', 'trim'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor el nombre del plato'
            ))
        ));
        $this->add($name);
                
        //Menu Secction
        $menuDiaType = [
            "Primero" => "Primero",
            "Segundo" => "Segundo", 
            "Postre" => "Postre", 
        ];
        $menuSecction = new Select("type",$menuDiaType);
        $menuSecction->addValidator(new InclusionIn(array(
            "message" => 'Por favor, elige un tipo correcto.',
            "domain" => (array_keys($menuDiaType))
        )));
        $this->add($menuSecction);

       
    }
}