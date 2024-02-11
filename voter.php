<?php
if (!isset($_SESSION)) { 
    session_start();
}
include "auth.php";
include "header_voter.php";
?>
<h4> Welcome <?php echo $_SESSION['SESS_NAME']; ?> </h4>
<h3>Make a Vote</h3>
<div style="text-align: center;">
    <form action="submit_vote.php" name="vote" method="post" id="myform">
        <table border="1" cellpadding="10" style="margin: 0 auto;">
            <tr>
                <th></th>
                <th>Choose One Department Elective Courses</th>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE406"></td>
                <td>CSE406: Advanced Java Programming</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE504"></td>
                <td>CSE504: Storage Technology Foundation</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE327"></td>
                <td>CSE327: Simulation and Modelling</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE434"></td>
                <td>CSE434: Game Development in Unity 3D</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE304"></td>
                <td>CSE304: Computer Graphics and Visualization</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="INT411"></td>
                <td>INT411: Software Project Management</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="INT402"></td>
                <td>INT402: Modern Web Programming Tools and Techniques</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE439"></td>
                <td>CSE493: Linux System Administration</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE436"></td>
                <td>CSE436: Blockchain</td>
            </tr>
            <tr>
                <td><input type="radio" name="lan" value="CSE403"></td>
                <td>CSE403: Network Security and Cryptography</td>
            </tr>
        </table>
        <?php global $msg; echo $msg; ?>
        <?php global $error; echo $error; ?>
        <center><input type="submit" value="Submit" name="submit" style="height:30px; width:100px" /></center>
    </form>
</div>
