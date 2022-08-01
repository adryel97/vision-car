<?php
namespace App\Controller;

use League\Plates\Engine;

class PageSite
{
    private $view;
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/website', 'php');
        $this->view->addData(['router' => $router]);
        $this->router = $router;
    }

    public function viewHome()
    {
        echo $this->view->render('home');
    }
}