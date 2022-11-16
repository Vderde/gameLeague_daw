<?php
Class MatchMaking{
    private $idGame;
    private $master;
    private $player2;
    private $time;
    private $ready;
    private $turn;

    function __construct($idGame=null,$master=null, $time=null, $ready=null,$turn=null, $player2=null){
        $this->idGame=$idGame;
        $this->master=$master;
        $this->time=$time;
        $this->ready=$ready;
        $this->turn=$turn;
        $this->player2=$player2;
    }
    function __set($propiedad,$valor){
        return $this->$propiedad = $valor;
    }
    static function searchGame($link){
        try{
            $consulta="SELECT * FROM partidas ORDER BY time";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function searchMaster($link){
        try{
            $consulta="SELECT * FROM partidas WHERE master='$this->master' ";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function searchGI($link){
        try{
            $consulta="SELECT * FROM partidas WHERE id='$this->idGame' ";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function createGame($link){
        try{
            $consulta="INSERT INTO partidas VALUES (null,'$this->master',null,'$this->time','$this->ready','$this->turn')";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function joinGame($link){
        try{
            $consulta = "UPDATE partidas SET player2='$this->player2',ready='$this->ready' WHERE id='$this->idGame'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function deleteGame($link){
        try{
            $consulta = "DELETE FROM partidas WHERE id='$this->idGame'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function cancelGame($link){
        try{
            $consulta = "DELETE FROM partidas WHERE master='$this->idGame'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
}