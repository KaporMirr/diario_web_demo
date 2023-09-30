<?php
/******************************************************
 ******************** CONFIGURACIONES *******************
 ********************************************************/
session_start();

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
    header("location:".$path_admin."form_login.php");

require($archivo);

$fecha = date("Y-m-d");
$id_usuario = $_SESSION['id_usuario'];
$titulo = $conexion->quote($titulo);
$copete = $conexion->quote($copete);
$cuerpo = $conexion->quote($cuerpo);

/******************************************************
 ******************** SUBIR IMAGEN **********************
 ********************************************************/
$copiarArchivo = false;
if (is_uploaded_file($_FILES['imagen']['tmp_name'])) {
    $nombreDirectorio = "../imagenes/subidas/";
    $idUnico = time();
    $nombrefichero = $idUnico . "-" . $_FILES['imagen']['name'];
    $copiarArchivo = true;
} else
    $nombrefichero = "";

if ($copiarArchivo)
    move_uploaded_file($_FILES['imagen']['tmp_name'], $nombreDirectorio . $nombrefichero);

/*****************************************************
 **************** GUARDANDO VALORES ********************
 ********************************************************/
$sql = "INSERT INTO news (titulo, copete, cuerpo, imagen, categoria, id_usuario, fecha) VALUES (:titulo, :copete, :cuerpo, :imagen, :categoria, :id_usuario, :fecha)";
$consulta = $conexion->prepare($sql);
$consulta->bindParam(':titulo', $titulo);
$consulta->bindParam(':copete', $copete);
$consulta->bindParam(':cuerpo', $cuerpo);
$consulta->bindParam(':imagen', $nombrefichero);
$consulta->bindParam(':categoria', $categoria);
$consulta->bindParam(':id_usuario', $id_usuario);
$consulta->bindParam(':fecha', $fecha);

if ($consulta->execute()) {
    header("location:../admin/mis_publicaciones.php?mensaje=Guardada");
} else {
    die("Error al insertar los datos: " . $consulta->errorInfo()[2]);
}

/******************************************************
 **************** CERRANDO CONEXIÓN *********************
 ********************************************************/
$conexion = null; // Cierra la conexión PDO
?>