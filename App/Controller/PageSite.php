<?php
namespace App\Controller;

use League\Plates\Engine;

class PageSite
{
    private $view;
    /**
     * The function is called when the class is instantiated. It creates a new instance of the Engine
     * class, which is a class that I created to render the views. It then adds the router object to the
     * view object, so that the router can be used in the views.
     * 
     * @param router The router object
     */
    public function __construct($router)
    {
        $this->view = new Engine(__DIR__ . '/../../view/website', 'php');
        $this->view->addData(['router' => $router]);
        $this->router = $router;
    }

/**
 * It renders the view file called home.php in the views folder.
 */
    public function viewHome()
    {
        echo $this->view->render('home');
    }
}