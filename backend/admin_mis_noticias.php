<?php

extract($_REQUEST);

// Rutas
$path_root = "../";
$path_backend = "../backend/";
$path_admin = "../admin/";
$path_noticias = "../noticias/";
$path_imagenes = "../imagenes/";


// Importaciones
$archivo = "conexion.php";
// Full path--> ../backend/conexion.php
require($path_backend.$archivo);


if (!isset($_SESSION['usuario_logueado']))
    header("location:" . $path_admin . "form_login.php");

$id_usuario=$_SESSION['id_usuario'];


$instruccion = "
    SELECT news.*, CONCAT(usuarios.nombre, ' ', usuarios.apellido) AS autor, usuarios.rol 
    FROM news 
    INNER JOIN usuarios ON news.id_usuario = usuarios.id_usuario
    WHERE news.id_usuario = '$id_usuario'
";

$mis_noticias = $conexion->query($instruccion);
$conexion = null;
?>