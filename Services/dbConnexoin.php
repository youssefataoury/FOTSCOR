<?php
class DbConnexion{
   private static $instance = null;
   private $pdo;
   private $host = 'localhost';
   private $userName = 'root'    
   private $password = '';
   private $dbName = 'Fotscor';
    
    private function __construct(){
        try
            {
                $bdd = new PDO('mysql:host='.$this->host.';dbname='.$this->dbName.';charset=utf8',$this->user,$this->pass);    
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
        return self::instance;
    }
    
    public function getPdo(){
        return $this->pdo;
    }
    
    public function exexuteQuery($query){
        $queryResult = $bdd->prepare($query);
        return $queryResult;
    } 
    
}
?>