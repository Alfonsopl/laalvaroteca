<?php

use Phalcon\Mvc\Model\Relation,
        Common\Uuid;

class SetMenu extends ModelBase
{
	public $id; 
	public $name;
        public $description;
        public $allergens;
        public $type; //starter, main or dessert.
}