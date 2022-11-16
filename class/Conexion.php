<?php
require "../config/config.php";
class Conexion{
	private $link;
	
	function __construct(){
		try{
			$this->link= new PDO("mysql:host=".HOST.";dbname=".CONEXION, USUARIO, PASS, OPCIONES);
		}
		catch(PDOException $e){
			echo "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}	
	}	
	function __get($var){
		return $this->$var;
	}
}