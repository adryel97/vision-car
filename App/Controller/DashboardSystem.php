<?php
namespace App\Controller;

use App\Model\User;
use League\Plates\Engine;
use Cocur\Slugify\Slugify;

class DashboardSystem
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
            'title' => 'Dashboard',
            'page' => 'dashboard'
        ]);
    }

    /**
     * If the user is logged in, show the dashboard, otherwise redirect to the login page
     */
    public function viewDashboard()
    {
        if ($_SESSION['logged'] == true) {
            echo $this->view->render('dashboard');
        } else {
            $this->router->redirect($this->router->route('login.aplication'));
        }
    }
}