<?php
class Ranking{
    private $idUser;
    private $elo;
    private $games;
    private $win;
    private $lose;
    private $draw;
    private $lastGame;

    function __construct($idUser,$elo=null, $games=null, $win=null, $lose=null, $draw=null, $lastGame=null){
        $this->idUser=$idUser;
        $this->elo=$elo;
        $this->games=$games;
        $this->win=$win;
        $this->lose=$lose;
        $this->draw=$draw;
        $this->lastGame=$lastGame;
    }
    function __set($propiedad,$valor){
        return $this->$propiedad = $valor;
    }
    function search($link){
        try{
            $consulta="SELECT * FROM ranking WHERE id_user='$this->idUser'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function add($link){
        try{
            $consulta="INSERT INTO ranking VALUES ('$this->idUser',1000,0,0,0,0,null)";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function update($link){
        try{
            $consulta = "UPDATE ranking SET mmr='$this->elo',games='$this->games',win='$this->win',lose='$this->lose',draw='$this->draw', lastGame='$this->lastGame' WHERE id_user='$this->idUser'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    static function rankingAll($link){
        try{
            $consulta="SELECT * FROM ranking, user WHERE ranking.id_user = user.id_user ORDER BY mmr DESC";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
}