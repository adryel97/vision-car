<?php 
namespace App\Controller;

use League\Plates\Engine;

class LoginSystem
{
    private $view;
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/templates', 'php');
        $this->view->addData(['router' => $router]);
        $this->router = $router;
    }

    public function viewLogin()
    {
        echo $this->view->render('_login');
    }
}