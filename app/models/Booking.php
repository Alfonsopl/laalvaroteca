<?php

use Phalcon\Mvc\Model\Relation,
        Common\Uuid;

class Booking extends ModelBase
{
	public $id;
        public $created;
        public $modified;
	public $name;
	public $telephone;
	public $email;
	public $date;
        public $time;
        public $shift;
        public $pax;
        public $observation;

}