
<?php

class Competition
{
   private $id;
   private $name;
   private $code;
   private $logo;
   private $onHoverLogo;
   
    
   public function getId()
    {
        return $this->id;
    }
    
     public function getName()
    {
        return $this->name;
    }
    
    public function getLogo()
    {
        return $this->logo;
    }
    
    public function getOnHoverLogo()
    {
        return $this->onHoverLogo;
    }
    
    public function getCode()
    {
        return $this->code;
    }
    
    public function __toString()
    {
        return  $this->id . " " .$this->name." ".$this->logo." ".this->onHoverLogo." ".this->code ;
    }
    
   

?>