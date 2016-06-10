<?php



use Phalcon\Mvc\Model\Relation,
        Common\Uuid;

class MenuSection extends ModelBase
{
	public $id;
	public $section;
        
        public function initialize()
	{
		$this->hasMany("id", "Menu", "menu_section", [
            'alias' => 'Plate',
            'foreignKey' => array(
                'action' => Relation::ACTION_CASCADE
            )
        ]);
        }

}