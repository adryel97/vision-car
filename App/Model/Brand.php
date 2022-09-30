<?php

namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class Brand extends DataLayer
{
    /**
     * Brand construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_brands', ['brand'], 'id_brand', false);
    }

    /**
     * A method that returns the brands of cars.
     * @return brandsCar {Array}
    */
    public function getBrandCar()
    {
        $sql = "SELECT id_brand, id_brand_fipe, UPPER(brand) AS brand, id_type
                FROM tbl_brands 
                WHERE id_type = 1
                GROUP BY brand 
                ORDER BY brand ASC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();
        $brandsCar = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $brandsCar;
    }

    /**
     * Returning the brands of motorcycles.
     * @return brandsMotorCycle {Array}
    */
    public function getBrandMotorCycle()
    {
        $sql = "SELECT id_brand, id_brand_fipe, UPPER(brand) AS brand, id_type
                FROM tbl_brands 
                WHERE id_type = 2
                GROUP BY brand 
                ORDER BY brand ASC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();
        $brandsMotorCycle = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $brandsMotorCycle;
    }

    /**
     * Returning the brands of trucks.
     * @return brandsTruck {Array}
     */
    public function getBrandTruck()
    {
        $sql = "SELECT id_brand, id_brand_fipe, UPPER(brand) AS brand, id_type
                FROM tbl_brands 
                WHERE id_type = 3
                GROUP BY brand 
                ORDER BY brand ASC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->execute();
        $brandsTruck = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $brandsTruck;
    }
}
