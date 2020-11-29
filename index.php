<?php
$insert=false;
if(isset($_POST['name'])){
$server="localhost";
$username="root";
$password="";
$database="trip";
$con=mysqli_connect($server,$username,$password,$database);
if(!$con)
    die("Connection failed".mysqli_connect_error());
$name=$_POST['name'];
$age=$_POST['age'];
$gender=$_POST['gender'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$other=$_POST['other'];
$sql="INSERT INTO `trip` ( `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ( '$name', '$age', '$gender', '$email', '$phone', '$other', current_timestamp());";
//echo $sql;

if($con->query($sql)==true){
   // echo"Successfully inserted";
   $insert=true;
}
else
    echo"Error : $sql <br> $con->error";
$con->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Travel</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Castoro&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css"> 
</head>
<body>
    <div class ="cointainer">
        <h3>Welcome to IET DAVV</h3>
         <p>Enter your details and submit this form to confirm your participation in the trip</p>
        <?php
        if($insert==true)
         echo "<p class='submitmsg'>Thaxx for submitting your form</p>";
         ?>
         <form action="index.php" method="POST">
            <input type="text" name="name" placeholder="Enter your name....." id="name">
            <input type="number" name="age" id="age" placeholder="Enter your Age....">
            <input type="text" name="gender" id="gender" placeholder="Enter your gender....." >
            <input type="text" name="email" id="email" placeholder="Enter your email....." >
            <input type="text" name="phone" id="phone" placeholder="Enter your Phone number....">
            <textarea name="other" id="other" cols="30" rows="10" placeholder="Enter additional information here"></textarea>
            <button class="btn">Submit</button>
            <button class="btn">Reset</button>
            
         </form>
    </div>
    <script src="js.js"></script>
</body>
</html>