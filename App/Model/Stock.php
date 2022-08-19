<?php
namespace App\Model;

use CoffeeCode\DataLayer\Connect;
use CoffeeCode\DataLayer\DataLayer;

class Stock extends DataLayer {
    /**
     * User construct
     * @return construct
     */
    public function __construct()
    {
        parent::__construct('tbl_stock', ['brand_vehicle', 'model_vehicle', 'version_vehicle', 'type_vehicle', 'price_vehicle'], 'id_vehicle', false);
    }

    public function getStock($idShops)
    {
        $sql = "SELECT *, REPLACE(REPLACE(REPLACE(status_vehicle, 'disabled','Inativo'), 'active','Ativo'), 'sold', 'Vendido') AS format_status, 
                DATE_FORMAT(date_create_vehicle, '%d/%m/%Y') AS format_date_create,
                    CONCAT('R$ ', REPLACE(REPLACE(REPLACE(FORMAT(price_vehicle, 2),'.',';'),',','.'),';',',')) AS format_price_vehicle
                    FROM tbl_stock WHERE cod_shop_vehicle = ? ORDER BY id_vehicle DESC";
        $content = Connect::getInstance();
        $con = $content->prepare($sql);
        $con->bindValue(1, $idShops);
        $con->execute();

        $stock = $con->fetchAll(\PDO::FETCH_ASSOC);
        return $stock;
    }
}