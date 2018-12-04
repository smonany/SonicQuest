<?php
//Récupération du pseudo du joueur
if(isset($_POST['nom'])){
  $var = $_POST['nom'];


//Récupération de la base de données objets
$link_objets = mysqli_connect('localhost', 'root', '', 'objets');
 if (!$link_objets) {
   die('Erreur de connexion avec objets');
 } else {
   <script>console.log('Connexion avec objets')</script>;
 }

$sql_objets_manipulables = "SELECT * FROM objets_manipulables";
$sql_objets_fixes = "SELECT * FROM objets_fixes";
$sql_codes = "SELECT * FROM codes";

$result1 = mysqli_query($link_objets, $sql_objets_manipulables);
$result2 = mysqli_query($link_objets, $sql_objets_fixes);
$result3 = mysqli_query($link_objets, $sql_codes);

$objets_manipulables = mysqli_fetch_array($result1);
$objets_fixes = mysqli_fetch_array($result2);
$codes = mysqli_fetch_array($result3);

//Déconnexion avec la base de données après récupération des tables
mysqli_close($link_objets);


//Récupération de la base de données scores
 $link_scores = mysqli_connect('localhost', 'root', '', 'scores');
  if (!$link_scores) {
    die('Erreur de connexion avec scores');
  } else {
    <script>console.log('Connexion avec scores')</script>;
  }

 $sql = "SELECT * FROM hall_of_fame";
 $result = mysqli_query($link_scores, $sql);
 $hall_of_fame = mysqli_fetch_array($result);

 //Déconnexion avec la base de données après récupération des tables
mysqli_close($link_scores);


echo json_encode($objets_manipulables);
echo json_encode($sql_objets_fixes);
echo json_encode($codes);
echo json_encode($hall_of_fame);
?>
