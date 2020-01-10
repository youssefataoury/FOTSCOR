<?php
class ApiDeserialisation {
    private $api_key = '66485d1780504493a4cfc5527ac4d4c4';
    private $headers = array('X-Auth-Token: '.$api_key);
    
    
    public static function executeRequest($urlRequest){
    $curl = curl_init("http://api.football-data.org/v2/".$urlRequest);
    curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
    curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $data = curl_exec($curl);
    if($data === false)
    {
        var_dump(curl_error($curl));
        return false;
    }
    else
    {
        $result = json_decode($data,true);
              
    }
    curl_close($curl);
        return $result;
    }
    
    
    public static function getJsonData($urlRequest){
        $curl = curl_init("http://api.football-data.org/v2/".$urlRequest);
        curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $data = curl_exec($curl);
        if($data === false)
        {
            var_dump(curl_error($curl));
            return false;
        }
        curl_close($curl);
        return $data;
        }
    }
}

?>

<?php
    // test
    $result = ApiDeserialisation::executeRequest("matches?dateFrom=2020-01-01&dateTo=2020-01-15");
    if($result != false){
        print_r($result);
    }
    $data = ApiDeserialisation::executeRequest("matches?dateFrom=2020-01-01&dateTo=2020-01-15");
    if($data != false){
        echo $data;
    }
?>