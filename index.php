<?php
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
require_once __DIR__.'/bootstrap.php';

$menus = [
	"Hosting",
	"Domain",
	"Server",
	"Website",
	"Affiliasi",
	"Promo",
	"Pembayaran",
	"Review",
	"Kontak",
	"Blog"
];
$products = json_decode(file_get_contents('templates/products.json'));

echo $twig->render('index.html', [
	'menus' => $menus,
	'products' => $products,
]);