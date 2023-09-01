<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = 'select * from friend order by name;';
    $reuslt = mysqli_query($conn, $sql);

    echo '--------------------------------<br>';
    echo '이름 전화번호<br>';
    echo '--------------------------------<br>';
    while($row = mysqli_fetch_assoc($reuslt)){
        echo $row['name'].' '.$row['tel'].'<br>';
    }
    echo '--------------------------------<br>';

    mysqli_close($conn);
?>