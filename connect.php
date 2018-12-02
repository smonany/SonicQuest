<?php
$objets = mysqli_connect('localhost', 'root', '', 'objets');
 if (!$link) {
   die('Erreur de connexion');
 } else {
   echo 'Succès... ';
 }
/*
 $sql1 = "SELECT DISTINCT cycle FROM eleves";
 $sql2 = "SELECT DISTINCT promo FROM eleves";
 $result1 = mysqli_query($link, $sql1);
 $result2 = mysqli_query($link, $sql2);
 $cycle = [];
 $promo = [];

 if(result1) {
   while ($ligne = mysqli_fetch_assoc($result1)) {
     $cycle = [$ligne];
   }
 }
 if(result2) {
   while ($ligne = mysqli_fetch_assoc($result2)) {
     $promo = [$ligne];
   }
 }*/
?>
