<?php 
	$link = mysqli_connect("localhost", "root", "", "sistempakarikanlele");
    
    $id = isset($_POST['id']) ? $_POST['id'] : '';
	
	$query = $link->query("SELECT * FROM penyakit WHERE code_penyakit = '".$id."'");
	
	$json = array();
    
    while($row = $query->fetch_assoc()){
        $json[] = $row;
    }
    
    echo json_encode($json);
    
    $link->close();
?>
