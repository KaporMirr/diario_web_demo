<?php
session_start();
extract($_REQUEST);
require("conexion.php");

// Datos del formulario
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$usuario = $_POST['usuario'];
$password = $_POST['password'];

// Saneamiento de datos
$salt = substr($usuario, 0, 2);
$clave_crypt = crypt($password, $salt);

// Escapar y entrecomillar valores con quote()
$nombre = $conexion->quote($nombre);
$apellido = $conexion->quote($apellido);
$usuario = $conexion->quote($usuario);
$clave_crypt = $conexion->quote($clave_crypt);

// Consulta SQL para agregar un usuario a la tabla
$sql = "
    INSERT INTO usuarios (nombre, apellido, usuario, password) 
        VALUES ($nombre, $apellido, $usuario, $clave_crypt)
";

// Ejecutar la consulta
if ($conexion->exec($sql)) {
    $msg = "";
    header("location:../admin/form_login.php");
} else {
    $msg = "";
    header("location:");
}

// Cierra la conexión a la base de datos
$conexion = null;
?>