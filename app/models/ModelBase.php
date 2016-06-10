<?php


use Phalcon\Mvc\Model,
	Phalcon\Mvc\Model\Resultset\Simple as Resultset;

class ModelBase extends Model
{
	public function idHex()
	{
		return Uuid::hex($this->id);
	}

    protected function beforeUpdate()
    {
    	if (property_exists($this, 'modified')) {
       		$this->modified = date('Y-m-d H:i:s');
       	}
    }

    protected function beforeValidationOnCreate() 
    {
    	if (property_exists($this, 'id') and !$this->id) {
			$this->id = Uuid::type4();
		}

		if (property_exists($this, 'created') and !$this->created) {
			$this->created	= date('Y-m-d H:i:s');
		}
    }

	public static function findByRawSql($sql, $baseClass, $params=null)
    {
        return new Resultset(null, $baseClass, $baseClass->getReadConnection()->query($sql, $params));
    }

    public static function executeByRawSql($sql, $baseClass, $params=null)
    {
    	return $baseClass->getWriteConnection()->execute($sql, $params);
    }
}