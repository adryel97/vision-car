<?php
namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class Stock extends DataLayer
{
    /**
     * User construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_stock', ['brand_vehicle', 'model_vehicle', 'version_vehicle', 'type_vehicle', 'price_vehicle'], 'id_vehicle', false);
    }
}