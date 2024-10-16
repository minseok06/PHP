<?php
header("Content-Type: application/json; charset=utf-8");

$name = $_POST['name'];
$email = $_POST['email'];

$servername = "localhost";
$username = "root"; // 사용자 이름
$password = ""; // 비번 없음
$dbname = "webcontent"; // 데이터베이스 이름

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// 테이블 명 member 적용
$sql = "INSERT INTO member (name, email)
VALUES ('$name', '$email')";

if (mysqli_query($conn, $sql)) {
  echo "성공"; // 성공시 console 창 결과화면
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>
