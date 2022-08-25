<?php
namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class Fipe extends DataLayer {
    /**
     * Fipe construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_fipe', [], 'id', false);
    }

    public function getBrandFipe()
    {
        $sql = "SELECT marca_id, marca FROM tbl_fipe GROUP BY marca";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();

        $stock = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $stock;
    }
}