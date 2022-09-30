<?php

namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class Fipe extends DataLayer
{
    /**
     * Brand construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_fipe', ['tipo'], 'id', false);
    }

    public function getModel($type, $brandId)
    {
        $sql = "SELECT modelo, fipe_cod, anomod FROM tbl_fipe
                WHERE tipo = $type AND marca_id = $brandId
                GROUP BY modelo 
                ORDER BY modelo ASC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();
        $models = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $models;
    }
}
