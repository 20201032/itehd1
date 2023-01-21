<?php

$konekcija = new mysqli("localhost", "root", "" , "php-tenis");

if ($konekcija->connect_errno){
    exit("Nije moguce povezivanje na bazu zbog greske:".$kon->connect_error.", kod:".$kon->connect_errno);
}
?>