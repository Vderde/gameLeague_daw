<?php
class Card{
    private $idGame;
    private $player;
    private $card;
    private $position;

    function __construct($idGame, $player=null, $card=null, $position=null){
        $this->idGame=$idGame;
        $this->player=$player;
        $this->card=$card;
        $this->position=$position;
    }
    static function getHand($link){
		try{
			$consulta="SELECT * FROM card ORDER BY RAND() LIMIT 10";
			$result=$link->prepare($consulta);
			$result->execute();
			return $result->fetchAll(PDO::FETCH_ASSOC);
		}
		catch(PDOException $e){
			echo "¡Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
    function get($link){
        try{
            $consulta="SELECT * FROM inGame WHERE idGame='$this->idGame' and player='$this->player'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function add($link){
        try{
            $consulta="INSERT INTO inGame VALUES ('$this->idGame','$this->player','$this->card','$this->position')";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result;
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function rivalCard($link){
        try{
            $consulta="SELECT * FROM card WHERE id_card='$this->card'";
            $result=$link->prepare($consulta);
            $result->execute();
            return $result->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "¡Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
    function deleteRivalCard($link){
        try{
            $consulta = "DELETE FROM inGame WHERE idGame='$this->idGame' and player='$this->player'";
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