<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = 'select * from friend;';

    $result = mysqli_query($conn, $sql);

    while($row = mysqli_fetch_assoc($result)){
        echo '이름 : '.$row['name'].'<br>';
        echo '전화번호 : '.$row['tel'].'<br>';
        echo '주소 : '.$row['address'].'<br>';
        echo '---------------------------------------------<br>';
    }

    mysqli_close($conn);
?>