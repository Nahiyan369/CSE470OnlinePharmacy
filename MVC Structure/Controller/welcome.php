<?php
// include header.php file
include ('header.php');
?>


<?php 

session_start();

if (!isset($_SESSION['username'])) {
    header("..\Controller\index.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>
<body>
    <?php echo "<h1>Welcome " . $_SESSION['username'] . "</h1>"; ?>
    <a href="..\Controller\logout.php">Logout</a>
</body>
</html>

<?php
// include footer.php file
include ('footer.php');
?>
