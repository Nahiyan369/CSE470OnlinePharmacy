<?php
    ob_start();
    // include header.php file
    include ('header.php');
?>
<?php

    /*  include banner area  */
        include ('..\View\Template\_banner-area.php');
    /*  include banner area  */

    

    /*  include top sale section */
        include ('..\View\Template\_top-sale.php');
    /*  include top sale section */
    /*  include top sale section */
     include ('..\View\Template\_special-price.php');
    /*  include top sale section */

    /*  include new  section  */
        include ('..\View\Template\_new-meds.php');
    /*  include new  section  */


?>



<?php
// include footer.php file
include ('footer.php');
?>

