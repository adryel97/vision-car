<?php

namespace App\Controller;

use App\Model\User;
use App\Model\Brand;
use App\Model\Fipe;
use App\Model\EngineCar;
use League\Plates\Engine;
use Cocur\Slugify\Slugify;
use App\Controller\TableFipe;

class VehicleSystem
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
        $this->fipe = new Fipe();
        $this->engine = new EngineCar();
        $this->startUser = User::startUser();
        $this->brands = new Brand();
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
    public function viewVehicle()
    {
        if ($_SESSION['logged'] == true) {
            echo $this->view->render(
                'createVehicle',
                [
                    'brands' =>  $this->brands->getBrandCar(),
                    'engines' => $this->engine->getEngine(),
                ]
            );
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }

    public function findBrandCar()
    {
        if ($_SESSION['logged'] == true) {
            $brands = $this->brands->getBrandCar();
            echo json_encode($brands);
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }

    public function findBrandMotorCycle()
    {
        if ($_SESSION['logged'] == true) {
            $brands = $this->brands->getBrandMotorCycle();
            echo json_encode($brands);
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }

    public function findBrandTruck()
    {
        if ($_SESSION['logged'] == true) {
            $brands = $this->brands->getBrandTruck();
            echo json_encode($brands);
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }

    public function findModels($gets)
    {
        if ($_SESSION['logged'] == true) {
            $type = $gets['type'];
            $brandId = $gets['brandid'];
            $models = $this->fipe->getModel($type, $brandId);
            echo json_encode($models);
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }
}
