<?php
require_once('db.class.php');
$uname=$_POST['rname'];
$password=$_POST['rpass'];
$r1=db::getInstance();
if($r1->regist($uname,$password)){
	header('location:login.html');
}