<?php
header("Content-Type: application/json; charset=utf-8");

$name = $_POST['name'];
$email = $_POST['email'];
echo(json_encode(array("name" => $name, "email" => $email)));

?>