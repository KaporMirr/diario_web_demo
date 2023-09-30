<?php

extract($_REQUEST);

if (!isset($_SESSION['usuario_logueado']))
    header("location:form_login.php");
$rol = $_SESSION['rol'];
if ($rol != "admin") {
    header("location:mis_publicaciones.php?mensaje=Usted no pose permisos de administrador");
}
?>


<h1 class="text-center">Administrador de usuarios</h1>