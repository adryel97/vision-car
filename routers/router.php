<?php

require 'vendor/autoload.php';

use CoffeeCode\Router\Router;

$router = new Router(ROOT);
/*****************
 * START SITE
 *****************/
$router->namespace('App\Controller');
$router->get('/', 'PageSite:viewHome', 'home.website'); //VIEW
/****************
 * END SITE
 ****************/


/**
 * APLICAÇÃO RODANDO
 */

$router->namespace('App\Controller')->group('aplication'); //GROUP APLICATION

/* ================START LOGIN====================== */
$router->get('/login', 'LoginSystem:viewLogin', 'login.aplication'); //VIEW
$router->post('/', 'LoginSystem:loginUser', 'login.action'); //VALIDATION
$router->get('/logout', 'LoginSystem:logoutUser', 'logout.action'); //LOGOUT
/* ================END LOGIN====================== */

/* ================START STOCK======================= */
$router->get('/stock', 'StockSystem:viewStock', 'stock.aplication'); //VIEW
$router->get('/stock/find', 'StockSystem:findStock', 'findStock.aplication'); //VIEW
/* ================END STOCK======================= */

/* ================START VEHICLE======================= */
$router->get('/create/vehicle', 'VehicleSystem:viewVehicle', 'vehicle.aplication'); //VIEW
/* ================END VEHICLE======================= */

/* ================START DASHBOARD======================= */
$router->get('/dashboard', 'DashboardSystem:viewDashboard', 'dashboard.aplication'); //VIEW
/* =================END DASHBOARD======================= */

$router->dispatch();

if ($router->error()) {
    $router->redirect("/ops/{$router->error()}");
}