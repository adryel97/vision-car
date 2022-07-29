<?php

require 'vendor/autoload.php';

use CoffeeCode\Router\Router;


$router = new Router(ROOT);


$router->namespace('App\Controller');
$router->get('/', 'LoginSystem:viewLogin');

$router->dispatch();

if ($router->error()) {
    $router->redirect("/ops/{$router->error()}");
}