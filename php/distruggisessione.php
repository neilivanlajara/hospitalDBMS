<html>
    <head>  <link rel="stylesheet" href="style.css">
</head><body>
<?php
session_start();
session_destroy();

echo '<div>
<form action="home.php" method="post">
<input type="submit" value="torna nella home"/> 
</form></div>';
?>
</body></html>