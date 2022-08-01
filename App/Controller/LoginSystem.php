<?php 
namespace App\Controller;

use App\Model\User;
use League\Plates\Engine;

class LoginSystem
{
    private $view;
    
    /**
     * The function is a constructor for the class. It creates a new instance of the Engine class, which is
     * used to render the view. It also creates a new instance of the User class, which is used to manage
     * user data
     * 
     * @param router The router object
     */
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/templates', 'php');
        $this->view->addData(['router' => $router]);
        $this->router = $router;
        $this->user = new User();
    }

    /**
     * If the user is logged in, redirect to the dashboard, otherwise, render the login page
     */
    public function viewLogin()
    {
        if(isset($_SESSION['logged']) && $_SESSION['logged'] == true){
            $this->router->redirect($this->router->route('dashboard.aplication'));
        } else {
            echo $this->view->render('login');
            exit;
        }
    }

    /**
     * It receives a POST request with the user's email and password, then it checks if the user exists in
     * the database, if it does, it sets the session variables and returns the user to the dashboard.
     * 
     * @param data {Array}
     */
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

    /**
     * It destroys the session and redirects the user to the login page.
     */
    public function logoutUser()
    {
        session_unset();
        session_destroy();
        $this->router->redirect($this->router->route('login.aplication'));
    }
}