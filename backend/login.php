<?php
/************************ CONFIGURACIONES **************************/
session_start();

extract($_REQUEST);
require("conexion.php");

/**************** SANEAMIENTO DE DATOS *************************/
$salt = substr($usuario, 0, 2);
$clave_crypt = crypt($password, $salt);
// Escapar y entrecomillar valores con quote()
$usuario = $conexion->quote($usuario);
$clave_crypt = $conexion->quote($clave_crypt);

/**************** INTERACCIÓN CON LA BASE DE DATOS *************************/
$instruccion = "
    SELECT * FROM usuarios 
    WHERE usuario = $usuario 
    AND password = $clave_crypt
";

try {
    $consulta = $conexion->query($instruccion);
    $numero_filas = $consulta->rowCount();

    // Credenciales válidas
    if ($numero_filas > 0) {
        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
        $_SESSION['nombre'] = $resultado['nombre'];
        $_SESSION['apellido'] = $resultado['apellido'];
        $_SESSION['id_usuario'] = $resultado['id_usuario'];
        $_SESSION['rol'] = $resultado['rol'];
        $_SESSION['usuario_logueado'] = "SI";
        header("location:../admin/index.php");

        // Credenciales inválidas
    } else {
        $_SESSION['mensaje'] = "Usuario y contraseña incorrecto";
        header("location:../admin/form_login.php?mensaje=Usuario y contraseña incorrecto");
    }

    // Errores en la interacción
} catch (PDOException $e) {
    $_SESSION['mensaje'] = "Fallo en la consulta: " . $e->getMessage();
    header("location:../admin/form_login.php?mensaje=Fallo en la consulta");

    // Cerrar conexión
} finally {
    $conexion = null;
}
?>