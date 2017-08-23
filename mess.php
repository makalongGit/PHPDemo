<?php
require_once('db.class.php');
session_start();
$name=$_SESSION['name'];
$time=date("Y-m-d H:i:s",time());
$mess=$_POST['message'];
$r1=db::getInstance();
$r1->sendMess($mess,$name,$time);
$r1->show();
