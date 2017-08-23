<?php
/**
 * 数据库类
 */

class db{
	private static $ins;
	private $dsn="mysql:dbname=mess;host=127.0.0.1";
	private $username="root";
	private $password="";
	private $conn;
	protected function __construct(){
		try{
			$this->conn=new PDO($this->dsn,$this->username,$this->password);
		}catch(PDOException $e){
			echo 'Connetc failed:'.$e->getMessage();
		}
	}

	public function __clone(){
		trigger_error('Clone is not allow');
	}

	public static function getInstance(){
		if(!(self::$ins instanceof self)){
			self::$ins=new self;
		}
		return self::$ins;
	}

	public function show(){
		$sql="select * from mess";
		echo '<table><tr><td>序号</td><td>姓名</td><td>留言信息</td><td>时间</td></tr>';
		foreach($this->conn->query($sql) as $row){

			print '<tr><td>'.$row['id'].'---</td>';
			print '<td>'.$row['name'].'---</td>';
			print '<td>'.$row['message'].'---</td>';
			print '<td>'.$row['time'].'---</td></tr>';
		}	
	}
	public function regist($uname,$password){
		$password=md5($password);
		$res=$this->conn->prepare("insert into user(name,password) values(?,?)");
		if($res->execute(array($uname,$password))){
			return true;
		}else{
			echo '插入失败,用户已存在';
		}
	}

	public function login($uname,$password){
		$password=md5($password);
		$res=$this->conn->prepare("select * from user where name=?");
		$res->execute(array($uname));
		if($red=$res->fetch()){
			$upass=$red['password'];
			if($password==$upass){
				return true;
			}else{
				echo '密码错误';
			}
		}else{
			echo '用户不存在';
		}
	}

	public function sendMess($mess,$name,$time){
		$res=$this->conn->prepare("insert into mess(message,name,time) values(?,?,?)");
		if($res->execute(array($mess,$name,$time))){
			echo '留言成功';
		}else{
			echo '插入失败';
		}
	}
	
	
}
/*$r1=db::getInstance();
$r1->regist('test4','123123');*/
//$r1->login('test1','123123');