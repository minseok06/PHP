<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = "select name, tel from friend where name='윤채린';";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    echo $row['name'].'의 전화번호 : '.$row['tel'].'<br>';

    mysqli_close($conn);
?>