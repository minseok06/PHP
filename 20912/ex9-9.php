<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'sample';

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $sql = "delete from friend where name='박성찬';";
    $result = mysqli_query($conn, $sql);

    if ($result)
        echo '삭제 완료!';
    else
        echo '삭제 오류 : '.mysqli_error($conn);

    mysqli_close($conn);
?>