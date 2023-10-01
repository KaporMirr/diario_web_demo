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
require($path_backend . $archivo);


if (!isset($_SESSION['usuario_logueado']))
    header("location:" . $path_admin . "form_login.php");

$id_usuario = $_SESSION['id_usuario'];

if (!isset($categoria)) {

    $instruccion = "
    SELECT news.*, CONCAT(usuarios.nombre, ' ', usuarios.apellido) AS autor, usuarios.rol 
    FROM news 
    INNER JOIN usuarios ON news.id_usuario = usuarios.id_usuario
    ORDER BY news.fecha DESC
";
} else {
    $instruccion = "
        SELECT news.*, CONCAT(usuarios.nombre, ' ', usuarios.apellido) AS autor, usuarios.rol 
        FROM news 
        INNER JOIN usuarios ON news.id_usuario = usuarios.id_usuario
        WHERE news.categoria = '$categoria'
        ORDER BY news.fecha DESC
    ";
}

$todas_publicaciones = $conexion->query($instruccion);
$conexion = null;
?>