/* Passage de la page d'accueil au jeu lorsque le joueur clique sur le
bouton Play*/
/*
var monElement = document.getElementById("Play"); // cible #toto
monElement.addEventListener("click", function(event){
     event.target = "mapid";
}, false);


var ajax = new XMLHttpRequest();
// méthode HTTP utilisée et fichier à charger
ajax.open('GET', 'page.php');
// on écoute l’évènement load de la requête
ajax.addEventListener('load',  function () {
    // quand c’est fini, on affiche le résultat
    console.log(ajax.response)
});
// envoi la requête
ajax.send();*/

//Affichage de la carte
var map = L.map('mapid').setView([48.856614, 2.3522219], 13);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

//Affichage des coordonnées géographiques du curseur
var souris = document.getElementById('coords');
map.on("mousemove", function(event){
  Lat = decimales(event.latlng.lat);
  Long = decimales(event.latlng.lng);
  souris.innerHTML = 'latitude = '+ Lat + ' longitude = '+ Long;
}, false);

function decimales(nb) {
  return parseFloat(nb).toFixed(3);
}

//affichage des objets selon le niveau de zoom
var echelle = document.getElementById('zoom');
var coords = ;
var icone = L.icon({
    iconUrl: 'my-icon.png',
    iconSize: [38, 95],
    iconAnchor: [22, 94],
    popupAnchor: [-3, -76],
});
var indice = 
map.on("zoom", function(event){
  console.log(map.getZoom());
  var marker = L.marker(coords, {icon: icone}, {riseOnHover: true}, {draggable: false}).addTo(map);
  marker.bindPopup(indice).openPopup();
}, false);
