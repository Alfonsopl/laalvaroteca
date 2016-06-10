<?php


use Phalcon\Mvc\Model\Relation,
        Common\Uuid;

class Menu extends ModelBase
{
	public $id; 
	public $name;
        public $description;
        public $allergens;
        public $price;
        public $menu_section;
        public $image;
        
        
        public function initialize() {

        $this->belongsTo("menu_section", "MenuSection", "id", [
            'alias' => 'Application'
        ]);
    }
    
    public function beforeDelete(){
        unlink($this->image);
    }

}