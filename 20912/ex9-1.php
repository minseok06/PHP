<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die('연결 오류 : '.mysqli_connect_error());
    }

    echo 'MySOL에 성공적으로 연결되었습니다!'
?>