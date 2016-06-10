<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Password;
use Phalcon\Forms\Element\Check;
use Phalcon\Validation\Validator\StringLength;
use Phalcon\Validation\Validator\Confirmation;
use Phalcon\Mvc\Model\Validator\Uniqueness;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;

class RegistrarForm extends Form {

    public function initialize() {
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

        // Email
        $email = new Text('email');
        $email->setLabel('E-Mail');
        $email->setFilters('email');
        $email->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor indruduzca su E-mail'
                    )),
            new Email(array(
                'message' => 'E-mail no válido'
                    )),
  
        ));
        $this->add($email);

        // Password
        $password = new Password('password');
        $password->setLabel('Contraseña');
        $password->addValidators(array(
            new PresenceOf(array(
                'message' => 'The password is required'
                    )),
            new StringLength(array(
                'min' => 8,
                'messageMinimum' => 'La contraseña es muy corta, minimo 8 carácteres'
                    )),
            new Confirmation(array(
                'message' => 'Las contraseñas no coinciden',
                'with' => 'confirmPassword'
                    ))
        ));
        $this->add($password);
        // Confirm Password
        $confirmPassword = new Password('confirmPassword');
        $confirmPassword->setLabel('Confirmar Contraseña');
        $confirmPassword->addValidators(array(
            new PresenceOf(array(
                'message' => 'Por favor, confirme la contraseña'
                    ))
        ));
        $this->add($confirmPassword);


        //is admin   
        $isAdmin = new Check("is_admin", array(
            'value' => True,
        ));
        $this->add($isAdmin);
    }

}
