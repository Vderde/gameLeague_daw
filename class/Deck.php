<?php
class Deck{
    private $idUser;
    private $cards;
    private $fecha;
    private $name;

    function __construct($idUser, $cards, $fecha, $name){
        $this->idUser=$idUser;
        $this->cards=$cards;
        $this->fecha=$fecha;
        $this->name=$name;
    }
    function newDeck($link){
        try{
            $consulta="INSERT INTO deck VALUES (null,'$this->idUser','$this->cards','$this->fecha','$this->name')";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    static function searchDecks($link, $id){
        try{
            $consulta="SELECT * FROM deck WHERE id_user=$id";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch (PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    static function currentDeck($link, $id){
        try{
            $consulta="SELECT * FROM deck WHERE id_deck=$id";
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