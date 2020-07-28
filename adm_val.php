<html>
    <head>
        
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>Petmania</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta charset="UTF-8">
        <title> admin verification page</title>
        
           
    </head>
    <body>
        
         <!--<div class="container">
                <div class="jumbotron">
                    <h1>Welcome to Admin Page</h1>
                    <br>
		    <h2> Add / Edit / Delete Hospitals and tips here</h2>
                    <p>this is admin page</p>
                </div> 
            </div>-->
        
        
        
        
        <?php
        
        //session_start();
        require("connection.php");
        
        
        
        $aname=$_POST['aname'];
        $pass=$_POST['pass'];
        
        
        
        $query = "SELECT password FROM admin WHERE admin_name='".$aname."'AND password='".$pass."';";
        
        
        $result = mysqli_query($connection, $query)
  or die ("Error in query: ".$query. " ".mysqli_error($connection));
        
        
        if(($aname==null) && ($pass==null))
        {
            echo "<script> alert('Please enter a name and password.'); </script>";
            include("admin_login.php");
        }
        
        else if($pass==null)
        {
            echo "<script> alert('Please enter a password.'); </script>";
            include("admin_login.php");
        }
        
        else if($aname==null)
        {
            echo "<script> alert('Please enter a name.'); </script>";
            include("admin_login.php");
        }
        
        
        
        else if (mysqli_num_rows($result) > 0)
   {
          
           // $_SESSION['role'] = "admin";
           // $inf = $_SESSION['role'];
              echo " <div class='container'>
                <div class='jumbotron'>
                    <h1>Welcome to Admin Page</h1>
                    <br>
		    <h2> Add / Edit / Delete Hospitals and tips here</h2>
                    <p>this is admin page</p><br><br><br><br><br><br><br>";
                    
                echo "<a href='feedback_user.php'> User's feedback </a><br><br><br>";
                 echo "<a href='hospitals_pet.php'> Hospital Details </a><br><br><br>";
                 echo "<a href='pettips.php'> Pet Tips </a><br><br><br>";
                 echo "</div></div>";
   }
   
   
   
        else {
            echo "<script> alert('Please enter a valid name or password.'); </script>";
            include("admin_login.php");
        }
   
   
   
   
  mysqli_close($connection);
  
   //include('hospitals_pet.php'); // Has to go to the main home page with the menu bar instead of single webpages
   //include('pettips.php');
  
        



        
        
        
        
        ?>
    </body>
</html>
