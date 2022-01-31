<?php 
	$link = mysqli_connect("localhost", "root", "", "sistempakarikanlele");
    
    $id = isset($_POST['id']) ? $_POST['id'] : '';
	
	$query = $link->query("SELECT * FROM pakar p JOIN gejala g ON p.id_gejala = g.code_gejala WHERE p.id_gejala = '".$id."'");
	
	$json = array();
    
    while($row = $query->fetch_assoc()){
        $json[] = $row;
    }
    
    echo json_encode($json);
    
    $link->close();
?>
