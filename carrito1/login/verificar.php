<?php
session_start();
include "../conexion.php";
$rows="";
$re=mysqli_query($con,"SELECT* from usuarios INNER JOIN puestos ON puestos.IDpuesto=usuarios.IDpuesto where Usuario='".$_POST['Usuario']."' AND Password='".$_POST['Password']."'")	or die(mysqli_error());

	while ($f=mysqli_fetch_array($re)) {
		$rows=$f['puesto'];
		$arreglo[]=array('Nombre'=>$f['Nombre'],
			'Apellido'=>$f['Apellido'],'Imagen'=>$f['Imagen']);
	}

     switch ($rows) {
            case 'Empleado': echo "Empleado";
            break;
         	case 'Administrador':header("Location: ../admin.php");
		    break;
		    case 'Cliente':header("Location:../index.php");
		    break;
            case '': header("Location: ../login.php?error=datos no validos");
            break;
     }
	
	$_SESSION['Usuario']=$arreglo;
	$_SESSION['puesto']=$rows;

	/*if(isset($arreglo)){
		$_SESSION['Usuario']=$arreglo;
		$_SESSION['puesto']=$rows;
		header("Location: ../admin.php");
	}else{
		header("Location: ../login.php?error=datos no validos"); 
	}*/
?>