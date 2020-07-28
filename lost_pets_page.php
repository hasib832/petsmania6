<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lost A PET page</title>
        
        <style type="text/css">
        
            .co {color:skyblue;}
            
        #bo { width: 200px;
        height: 200px;
        color:white;
        border:solid;
        }
        
        .to *    {vertical-align: top;}
        
        
        </style>
            
        
        
        
    </head>
    <body bgcolor=" green">
        
        <?php
        
        
        session_start();
require("connection.php");

$_GET['id'] = '1';

if(isset($_GET['id']))
{
    
    
    $query = "SELECT * FROM lost_pets WHERE lost_pets_id='" .$_GET['id']. "' ;";

$result = mysqli_query($connection, $query)
  or die ("Error in query: ".$query. " ".mysqli_error($connection));
    
}


if (mysqli_num_rows($result) > 0)
   {
    echo "<h1 class='co'> This is the Lost a pet page</h1>";
  
  
     while($row = mysqli_fetch_array($result))
     {
       echo "
        
        <div id='bo'> 
        </div>
        <br><br>
        
        
        <form >
            
            Pet Name:<input type='text' name='pet name'  value='".$row['lost_name']."' readonly> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Pet Age:<input type='text' name='age'  value='".$row['lost_age']."' readonly><br><br>
            Species: <input type='text' name='species' value='".$row['lost_species']."' readonly> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Breed:<input type='text' name='breeds'  value='".$row['lost_breed']."' readonly><br><br>
            Address:<input type='text' name='address'  value='".$row['lost_address']."' readonly><br><br>
            Owner's Name:<input type='text' name='owner'  value='".$row['lost_owner']."' readonly> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Contact:<input type='text' name='contact'  value='".$row['lost_contact']."' readonly><br><br>
            <p class='to'> <label>Description:</label><textarea name='description' rows='5' cols='35' readonly>".$row['lost_description'] ."</textarea></p>
            
            
        </form>";
   
     }
     
   
   
          
   }
        
        
        
        
        
        
        
        
        

        ?>
    </body>
</html>
