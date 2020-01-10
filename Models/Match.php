<?php


require_once("../Services/DbConnexion.php");
require_once("../Services/ApiDeserialisation.php");


class Match

{
    private $id;
    private $homeTeam;
    private $awayTeam;
    private $homeTeamLogo;
    private $awayTeamLogo;
    private $status;
    private $homeTeamScore;
    private $awayTeamScore;
    private $_date;
    private $_time;
    private $competition;
    private $winner;
    
    
    public function __construct($homeTeam,$awayTeam,$status,$homeTeamLogo,$awayTeamLogo,$homeTeamScore,$awayTeamScore,$_date,$_time,$competition,$winner)
    {
        $this->homeTeam = $homeTeam;
        $this->awayTeam = $awayTeam;
        $this->homeTeamScore = $homeTeamScore;
        $this->awayTeamScore = $awayTeamScore;
        $this->status = $status;
        $this->homeTeamLogo = $homeTeamLogo;
        $this->awayTeamLogo = $awayTeamLogo;
        $this->_date = $_date;
        $this->_time = $_time;
        $this->competition = $competition;
        $this->winner = $winner;
    }
    
    public function getId()
    {
        return $this->id;
    }
    
    public function getHomeTeam()
    {
        return $this->homeTeam;
    }
    
    public function getAwayTeam()
    {
        return $this->awayTeam;
    }
    
    public function getHomeTeamLogo()
    {
        return $this->homeTeamLogo;
    }
    
    public function getAwayTeamLogo()
    {
        return $this->awayTeamLogo;
    }
    
    public function getHomeTeamScore()
    {
        return $this->homeTeamScore;
    }
    
    public function getAwayTeamScore()
    {
        return $this->awayTeamScore;
    }
    
    public function getStatus()
    {
        return $this->status;
    }
    
    public function getDate()
    {
        return $this->_date;
    }
    
    public function getTime()
    {
        return $this->_time;
    }
    
    public function getWinner()
    {
        return $this->winner;
    }
    
    public function getCompetition()
    {
        return $this->competition;
    }
    
    public function __toString()
    {
        return  $this->id . " " .$this->homeTeam." ".$this->awayTeam ." ". $this->homeTeamLogo
        ." ". $this->awayTeamLogo." ".$this->homeTeamScore." ".$this->awayTeamScore." ".$this->status." ".$this->_date." ".$this->_time." ".$this->winner." ".$this->competition;
    }
    
   public static function getMatchs($date){
      $result = ApiDeserialisation::executeRequest("matches?dateFrom=".$date."&dateTo=".$date);
       if($result != false)
       {
           $connexionInstance = DbConnexion::getDbInstance();
           $arrayMatch = array();
           for($i=0;$i<$result["count"];$i++)
           {
                $query = $connexionInstance->executeQuery("SELECT * FROM TEAM WHERE name = ? OR name = ?");
           $query->execute(array($result["matches"][$i]["homeTeam"]["name"],$result["matches"][$i]["awayTeam"]["name"]));
            if($query->rowCount()>0)
             {
                
                while($row = $req->fetch())
                  {
                    if($result["matches"][$i]["homeTeam"]["name"] = $row["name"]){
                        $homeTeamLogo = $row["logo"];
                    }
                    else{
                        $awayTeamLogo = $row["logo"];
                    } 
                  }
               $query->closeCursor();
            } else{
                     $homeTeamLogo = "pas encore dans la bd";
                     $awayTeamLogo = "pas encore dans la bd";
                  }
               $utcSeconds = strtotime($result["matches"][$i]["utcDate"]);
               $time = date('H:i',$utcSeconds);
               $date = date('d-m-Y',$utcSeconds);
               $arrayMatch[$i] = new Match($result["matches"][$i]["homeTeam"]["name"],
                                           $result["matches"][$i]["awayTeam"]["name"],
                                           $result["matches"][$i]["status"],
                                           $homeTeamLogo,
                                           $awayTeamLogo,
                                           $result["matches"][$i]["score"]["fullTime"]["homeTeam"],
                                           $result["matches"][$i]["score"]["fullTime"]["awayTeam"],
                                           $date,
                                           $time,
                                           $result["matches"][$i]["competition"]["name"],
                                           $result["matches"][$i]["score"]["winner"]);
               
           }
        
           
           return $arrayMatch;
       }
       else {return false;}
   }
}
   
   Match::getMatchs("2020-01-10");
?>
