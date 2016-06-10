<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\InclusionIn;


class CartaForm extends Form
{

    public function initialize()
    {
        // Name
        $name = new Text('name');
        $name->setLabel('nombre');
        $name->setFilters(array('striptags', 'string', 'trim'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor introduzca su nombre'
            ))
        ));
        $this->add($name);
        
      /*  //Description
        $descripcion = new Text('description');
        $descripcion->setLabel('descripción');
        $descripcion->setFilters(array('striptags', 'string', 'trim'));*/

     /*   //Precio
        $price = new Numeric("price", array('min' => 0, 'step'=>0.01));
        $price->addValidator(new PresenceOf(array(
            'message' => 'Por favor introduzca el precio.'
        )));
        $this->add($price);*/
        
        
        //Menu type
        $menuSec = MenuSection::find();
        $arraySection = [];
        foreach ($menuSec as $section){
            $arraySection[$section->id]=  $section->section;
        }
        $menuSection = new Select("menu_section", $arraySection);
        $menuSection->addValidator(new InclusionIn(array(
            "message" => 'Por favor, elige un tipo correcto.',
            "domain" => (array_keys($arraySection))
        )));
        $this->add($menuSection);

       
    }
}