<?php
session_start();
require_once('db.class.php');
$uname=$_POST['name'];
$password=$_POST['pass'];
$r1=db::getInstance();
if($r1->login($uname,$password)){
	$_SESSION['name']=$uname;
	header('location:mess.html');
}