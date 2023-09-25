# 응프 수행평가
1. index.php
```php
if(isset($_SESSION['userid']))
if(isset($_SESSION['username']))
```
```html
<span><a href="login_form.php">로그인</a></span>
<span><a href="logout.php">로그아웃</a></span>
```

2. login.php
```php
$sql = "select * from members where id='$id'";
$num_match = mysqli_num_rows($result);
$row = mysqli_fetch_assoc($result);
if($pass != $db_pass)
```

3. login_form.php
```javascript
function check_input()
```
```html
<form name='login' method='post' action="login.php">
<li><button type='button' onclick='check_input()'>로그인</button></li>
```

4. logout.php
```php
unset($_SESSION['userid']);
unset($_SESSION['username']);
```
