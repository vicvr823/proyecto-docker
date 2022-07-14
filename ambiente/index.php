<?php

echo '<h1>Hola mundo xampp</h1>';

$conexion = new PDO('mysql:host=db;dbname=xampp', 'root', 'hello1234');

$res = $conexion->exec('SELECT "Hola a todos"');
echo $res;

?>
