<?php
    $name = $_POST['name'];
    $tel = $_POST['tel'];
    $address = $_POST['address'];

    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = "insert into friend(name, tel, address) values ('$name','$tel','$address');";

    $result = mysqli_query($conn, $sql);

    if($result)
        echo "friend 테이블에 데이터 삽입 완료!";
    else
        echo "friend 테이블에 데이터 삽입 오류 : ".mysqli_error($conn);

    mysqli_close($conn);
?>