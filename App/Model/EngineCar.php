<?php

namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class EngineCar extends DataLayer
{
    /**
     * Engine construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_engine', ['engine'], 'id_engine', false);
    }

    public function getEngine()
    {
        $sql = "SELECT * FROM tbl_engine ORDER BY engine ASC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();
        $engines = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $engines;
    }
}
