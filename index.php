<?php
$pass = getenv('ROOT_PASSWORD');
$host = 'db';
$user = 'root';
$dbname = 'mysql';

$conn = @new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    echo "Error de conexión: " . $conn->connect_error;
} else {
    echo "Conexión exitosa. Antonio Villegas Rodríguez.";
}
?>
