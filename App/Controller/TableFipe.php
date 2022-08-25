<?php
namespace App\Controller;

use App\Model\Fipe;
use Cocur\Slugify\Slugify;

class TableFipe extends Fipe
{
    public function __construct()
    {
        $this->slugify = new Slugify();
        $this->fipe = new Fipe();
    }

    public function findBrandFipe()
    {
        $brands = $this->fipe->getBrandFipe();
        return $brands;
    }
}