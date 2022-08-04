<?php
namespace App\Controller;

use App\Model\User;
use App\Model\Stock;
use League\Plates\Engine;
use Cocur\Slugify\Slugify;

class StockSystem extends Stock 
{
    private $view;

    /**
     * It's a constructor function that creates a new instance of the Engine class, and then adds some data
     * to the view.
     * 
     * @param router the router object
     */
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/templates', 'php');
        $this->router = $router;
        $this->user = new User();
        $this->slugify = new Slugify();
        $this->startUser = User::startUser();
        $this->view->addData([
            'router' => $router,
            'idUser' => $this->startUser->id_users,
            'codeUser' => $this->startUser->code_users,
            'nameUser' => $this->startUser->name_users,
            'avatar' =>  $this->slugify->slugify($this->startUser->name_users, ''),
            'title' => 'Estoque',
            'page' => 'estoque',
        ]);
    }


    /**
     * If the user is logged in, render the stock page, otherwise redirect to the login page.
     */
    public function viewStock()
    {
        if ($_SESSION['logged'] == true) {
            echo $this->view->render('stock');
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }

    public function findStock()
    {
        if ($_SESSION['logged'] == true) {
            $idShops = $this->startUser->id_shops;
            $stock = new Stock();
            $findStock = ["data" => $stock->getStock($idShops)];
    
            echo json_encode($findStock);
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }
}