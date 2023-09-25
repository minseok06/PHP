<?php
    session_start();
    if(isset($_SESSION['userid'])) //빈칸
        $userid = $_SESSION['userid'];
    else
        $userid = '';

    if(isset($_SESSION['username'])) //빈칸
        $username = $_SESSION['username'];
    else
        $username = '';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP+MySQL 입문</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header">
        <h3 class="logo">
            <a href="index.php">이끌든가 따르든가 비키든가</a>
        </h3>
        <div class="top">
    <?php
        if(!$userid){
    ?>
            <span><a href="login_form.php">로그인</a></span> <!-- 빈칸 -->
    <?php
        }else{
            $logged = $username."(".$userid.")";
    ?>
            <span><?=$logged?></span>
            <span> | </span>
            <span><a href="logout.php">로그아웃</a></span> <!-- 빈칸 -->
    <?php
        }
    ?>
        </div>
    </div>  
</body>
</html>