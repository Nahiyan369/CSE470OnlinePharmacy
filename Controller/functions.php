<?php

// require MySQL Connection
require ('..\Model\database\DBController.php');

// require Product Class
require ('..\Model\database\Product.php');

// require Cart Class
require ('..\Model\database\Cart.php');


// DBController object
$db = new DBController();

// Product object
$product = new Product($db);
$product_shuffle = $product->getData();

// Cart object
$Cart = new Cart($db );
