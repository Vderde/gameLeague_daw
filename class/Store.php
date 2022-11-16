<?php
class Store{
    static function getAll($link){
        try{
            $consult="SELECT * FROM card";
            $result=$link->prepare($consult);
            $result->execute();
            return $result->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
}