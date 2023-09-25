<?php
    session_start();
    unset($_SESSION['userid']); //빈칸
    unset($_SESSION['username']); //빈칸

    echo("
        <script>
        location.href='index.php';
        </script>
    ");
?>