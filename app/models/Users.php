<?php

use Phalcon\Mvc\Model\Relation,
        Common\Uuid;

class Users extends ModelBase
{
	public $id;
	public $user_name;
	public $password;
	public $email;
	public $telephone;
        public $is_employee = false;
        public $is_admin = false;

}