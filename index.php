<?php include "header.php";
session_start();
if (isset($_SESSION['SESS_NAME'])!="") {
	header("Location: voter.php");
}
?>
<?php global $msg; echo $msg;?>

<p><center><legend><font color='#008000' size='18'>This system allows all students to choose their DEPARTMENT ELECTIVES.</p>
<p>In order to Choose for the Department Electives first the user needs to register and then login .</font></legend></center>
    <p>&nbsp;&nbsp;</p>
<?php include "footer.php";?>
