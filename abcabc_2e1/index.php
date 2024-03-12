<?php
$server = "localhost";
$user = "root";
$pass = "";
$base = "ksiegarnia";

$query = "SELECT klienci.imie, klienci.nazwisko, klienci.miejscowosc FROM klienci";
// $names = "SELECT klienci.imie FROM klienci";
// $surnames = "SELECT klienci.nazwisko FROM klienci";
// $cities = "SELECT klienci.miejscowosc FROM klienci";

$con = new mysqli($server, $user, $pass, $base);

if ($result=$con->query($query))
    while($row=$result->fetch_array())
        echo "<b>".$row["imie"]." ".$row["nazwisko"]."</b> z miasta: <b>".$row["miejscowosc"]."</b><br>";
else
    echo $con->errno." ".$con->error;

$con->close();
?>