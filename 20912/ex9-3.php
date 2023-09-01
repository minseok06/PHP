<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = "insert into friend (name, tel, address) values
    ('홍길동', '01012345678', '경기도 권선구 수원시 온정로 123');";

    $result = mysqli_query($conn, $sql);

    if($result)
        echo '데이터 삽입 완료!';
    else
        echo '데이터 삽입 오류 : '.mysqli_error($conn);

    mysqli_close($conn);
?>