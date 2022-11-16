<?php
class User{

    private $user;
    private $pwd;
    private $nombre;
    private $apellido;
    private $fechaN;
    private $email;
    private $fechaR;

    function __construct($user, $pwd, $nombre=null, $apellido=null, $fechaN=null, $email=null, $fechaR=null){
        $this->user=$user;
        $this->pwd=$pwd;
        $this->nombre=$nombre;
        $this->apellido=$apellido;
        $this->fechaN=$fechaN;
        $this->email=$email;
        $this->fechaR= $fechaR;
    }
    function insertar($link){
        try{
            $consulta="INSERT INTO user VALUES (null,'$this->user','$this->pwd','$this->nombre','$this->apellido','$this->fechaN','$this->email','$this->fechaR')";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
         }
    }
    function buscar($link){
        try{
            $consulta="SELECT * FROM user where user='$this->user'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result->fetch(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
             die();
         }
    }
    function login($link){
        try{
            $usuario=$this->buscar($link);
            if(!empty($usuario)){
                if(password_verify($this->pwd, $usuario['password']))
                    return $usuario;
                else return false;
            }
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
             die();
         }
    }
}