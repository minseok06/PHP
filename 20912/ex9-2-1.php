<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die('연결 오류 : '.mysqli_connect_error());
    }

    $sql = 'create database sample2';

    $result = mysqli_query($conn, $sql);

    if ($result)
        echo 'friend 테이블 생성 완료!';
    else
        echo '테이블 생성 오류 : '.mysqli_error($conn);
        
    mysqli_close($conn);
?>