<?php
include('conexion.php');
require_once 'lib/dompdf/autoload.inc.php';//https://github.com/dompdf/dompdf/releases
//Contenido del PDF
$suma='';
$content="
<center><div><h2>Formato de compra</h2></div></center>
<br><br>
<div><h3>Productos</h3></div><br><br>
";
$re=mysqli_query($con,'SELECT`id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal` FROM `compras` ');
$content.='<table style="width:100%;" border="1">
 <tr>
   <th>Producto</th>
   <th>Cantidad</th>
   <th>Precio</th>
 </tr>';
while ($f=mysqli_fetch_array($re)) {				
	$content.='
	<tr>
 	<td>'.$f['nombre'].'</td>
 	<td>'.$f['cantidad'].'</td>
 	<td>'.$f['precio'].'</td>
    </tr>';	
    $suma=(double)$f['precio']+(double)$suma;
}
$content.='
<tr>
<td>Total</td>
<td></td>
<td>'.$suma.'</td>
</tr>';
$content.='</table>';
use Dompdf\Dompdf; // creacion del formato PDF


//sum(cast(column1 as decimal(15,3))+cast(column2 as decimal(15,3)))
$dompdf = new Dompdf();
$dompdf->loadHtml($content);
$dompdf->setPaper('A4', 'landscape'); // (Opcional) Configurar papel y orientación
$dompdf->render(); // Generar el PDF desde contenido HTML
$pdf = $dompdf->output(); // Obtener el PDF generado
$dompdf->stream("Documento", array("Attachment" => 0)); // Enviar el PDF generado al navegador
?>
