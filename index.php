<?PHP
// Program file start
// phpinfo();


echo "Klasa 2E"."<br>";     // . - konkatynacja
echo "komunikat kolejny"."<br>";

//otwieranie polaczenia z baza
$server = "localhost";
$user = "root";
$password = "";
$base = "przepisyPrzyklad";

$con = new mysqli($server, $user, $password, $base);

$zapytanie = "SELECT NazwaPrzepisu FROM przepisy ORDER BY NazwaPrzepisu ASC";
if($wynik=$con->query($zapytanie))
    while($row=$wynik->fetch_array())       // wypisywanie, az sie nie skonczy
        echo $row["NazwaPrzepisu"]."<br>";  // fetch_array() - 
else
    echo $con->errno." ". $con->error;

// zamkniecie polanczenia z baza
$con->close();

// znacznik konca pliku PHP
?>