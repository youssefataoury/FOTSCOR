<?php
class DbConnexion{
   private static $instance = null;
   private $pdo;
   private $host = 'localhost';
   private $userName = 'root';  
   private $password = '';
   private $dbName = 'Fotscor';
    
    private function __construct(){
        try
            {
                $this->pdo = new PDO('mysql:host='.$this->host.';dbname='.$this->dbName.';charset=utf8',$this->userName,$this->password);    
            }
        catch(PDOException $e)
            {
                    die('Erreur : '.$e->getMessage());
            }
    }
    
    public static function getDbInstance(){
        if(!self::$instance){
            self::$instance = new DbConnexion();
        }
        return self::$instance;
    }
    
    public function getPdo(){
        return $this->pdo;
    }
    
    public function executeQuery($query){
        $queryResult = $this->pdo->prepare($query);
        return $queryResult;
    } 
    
}
?>