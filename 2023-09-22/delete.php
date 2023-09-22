<?php
    session_start();
    if(isset($_SESSION['userid']))
        $userid = $_SESSION['userid'];
    else
        $userid = '';

    $con = mysqli_connect("localhost","root","","sample");
    $sql = "select * from members where id='$userid'";
    
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $id = $row['id'];

    $sql = "delete from members where id='$id'";
    mysqli_query($con, $sql);

    mysqli_close($con);

    unset($_SESSION['userid']);

    echo("
        <script>
        location.href='index.php';
        </script>
    ");
?>