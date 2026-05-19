<?php
$host = 'db';
$user = 'root';
$pass = getenv('ROOT_PASSWORD');
$dbname = 'mysql';

// Intentamos conectar hasta 5 veces, esperando 2 segundos entre intentos
$conn = null;
for ($i = 0; $i < 5; $i++) {
    $conn = @new mysqli($host, $user, $pass, $dbname);
    if (!$conn->connect_error) {
        break; // ¡Éxito! Salimos del bucle
    }
    sleep(2); // Esperamos 2 segundos antes de reintentar
}

if ($conn->connect_error) {
    // Si después de los intentos sigue fallando, mostramos el error
    echo "Error tras reintentos: " . $conn->connect_error;
} else {
    echo "Conexión exitosa a la base de datos.";
}
?>
