#!/usr/bin/php

<?php @ini_set('display_errors', 0); error_reporting(0);

if(!empty($_GET['url'])){$url = urldecode($_GET['url']); }elseif(!empty($argv[1])){ $url = $argv[1];}else{system("clear");
    die("
     \e[4;1mSubdomain-Scan\e[0;0m is a tool to quickly scan subdomains\e[0;0m
      \e[6;31m\e[2;31m$\e[1;31m>\e[0;0m \e[2;32m\e[1;4m./subscan\e[0;0m\e[1;2m exemple.com\e[0;0m
     \n");
}
    $home = "
    
    $location = subdomain_scan($url);
    $scan = json_decode($location, true);

    $subdomains = $scan['subdomains'];
    
    if(!empty($subdomains)) {
        system("clear");
        print_r ("$home\n     \033[1;32mSubdomain of\e[0;0m \e[4;2m$url\e[0;0m \033[1;32mfound!\e[0;0m\n\n");
        foreach($subdomains as $subdo) {
            print_r ("     \033[1;32m[\033[0;36m+\033[1;32m]\e[0;0m http://$subdo\n");
        }

    }else {
        system("clear");
        print_r ("$home\n\e[0;0m     \e[0;0m\033[1;31mFailed to find subdomain of\e[0;0m \e[1;2m$url\e[0;0m\n");
    }

    function subdomain_scan($url) {
        $api = "https://crimeflare.herokuapp.com/api/subscan/json.php?url=".$url."";
        system("clear");
        print_r("\n \033[1;27mSearching for subdomains of\e[0;0m \e[4;2m$url\e[0;0m\n\033[1;32m Loading...\e[0;0m");sleep(3);

        $cURL = curl_init();

        curl_setopt($cURL, CURLOPT_URL, $api);
        curl_setopt($cURL, CURLOPT_HTTPGET, true);
        curl_setopt($cURL, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($cURL, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Accept: application/json',
            'User-Agent: '.$_SERVER['HTTP_USER_AGENT']
        ));

        return curl_exec($cURL);
    }
?>
