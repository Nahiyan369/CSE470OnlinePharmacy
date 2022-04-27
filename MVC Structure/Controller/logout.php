<?php
// include header.php file
include ('..\Controller\header.php');
?>


<?php 

session_start();
session_destroy();

header("..\Controller\index.php");

?>

<?php
// include footer.php file
include ('..\Controller\footer.php');
?>