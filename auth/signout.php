<?php 
require_once _DIR_ . '/../../config/config.php';

$_SESSION =[];
session_destroy();

header('Location: ' . BASE_URL . '/index.php');
exit;
?>