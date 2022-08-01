<?php 
namespace App\Controller;

use App\Model\User;
use League\Plates\Engine;

class LoginSystem
{
    private $view;
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/templates', 'php');
        $this->view->addData(['router' => $router]);
        $this->router = $router;
        $this->user = new User();
    }

    public function viewLogin()
    {
        if(isset($_SESSION['logged']) && $_SESSION['logged'] == true){
            $this->router->redirect($this->router->route('dashboard.aplication'));
        } else {
            echo $this->view->render('login');
            exit;
        }
    }

    public function loginUser($data)
    {
        $_SESSION['email'] = $data['email'];
        $_SESSION['password'] = $data['password'];
        $_SESSION['logged'] = $_SESSION['logged'] ?? false;

        $login = $this->user->conectUser($_SESSION['email'], md5($_SESSION['password']));

        if ($login == true) {
            $_SESSION['logged'] = true;
            echo json_encode(["status" => $this->router->route('dashboard.aplication')]);
        } else {
            echo json_encode(["status" => "false"]);
            session_unset();
            session_destroy();
        }
    }

    public function logoutUser()
    {
        session_unset();
        session_destroy();
        $this->router->redirect($this->router->route('login.aplication'));
    }
}