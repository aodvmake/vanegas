<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<img src="./imagenes/descarga.jpeg" id="logo">
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
		</a>
	</header>
	<section>
		
	<?php
		include 'conexion.php';
		$re=mysqli_query($con,"select * from productos")or die(mysqli_error());
		while ($f=mysqli_fetch_array($re)) {
		?>
			<div class="producto">
			<center>
				<img src="./productos/<?php echo $f['imagen'];?>"><br>
				<span><?php echo $f['Nombre'];?></span><br>
				<a href="./detalles.php?id=<?php  echo $f['id'];?>">ver</a>
			</center>
		</div>
	<?php
		}
	?>
		
			
	</section>
	
</body>
</html>