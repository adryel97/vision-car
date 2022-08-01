<?php

require 'vendor/autoload.php';

use CoffeeCode\Router\Router;


$router = new Router(ROOT);

$router->namespace('App\Controller');
$router->get('/', 'PageSite:viewHome', 'home.website');


$router->namespace('App\Controller')->group('aplication');
$router->get('/login', 'LoginSystem:viewLogin', 'login.aplication');

$router->dispatch();

if ($router->error()) {
    $router->redirect("/ops/{$router->error()}");
}