<?php
mysqli_report(MYSQLI_REPORT_OFF);

// 'db' es el nombre del servicio que definiremos en el docker-compose
$host = 'db';
$user = 'root';

// Acceso seguro mediante variables de entorno compartidas por Jenkins
$pass = getenv('ROOT_PASSWORD');
$dbname = 'mysql';

$conn = @new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    echo "Error de conexión: " . $conn->connect_error;
} else {
    echo "Conexión exitosa.";
}
?>
