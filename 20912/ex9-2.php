<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die('연결 오류 : '.mysqli_connect_error());
    }

    $sql = 'create table friend(
        num int not null auto_increment,
        name char(10) not null,
        tel char(15) not null,
        address char(80),
        primary key(num))';

    $result = mysqli_query($conn, $sql);

    if ($result)
        echo 'friend 테이블 생성 완료!';
    else
        echo '테이블 생성 오류 : '.mysqli_error($conn);
        
    mysqli_close($conn);
?>