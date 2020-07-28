<html>
    <head>
        <meta charset="UTF-8">
        <title>Found A PET page</title>
        
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
    <body bgcolor="darkslategrey">
        
        <?php
        
        
        session_start();
require("connection.php");

$_GET['id'] = '1';

if(isset($_GET['id']))
{
    
    
    $query = "SELECT * FROM found_pets WHERE found_pets_id='" .$_GET['id']. "' ;";

$result = mysqli_query($connection, $query)
  or die ("Error in query: ".$query. " ".mysqli_error($connection));
    
}


if (mysqli_num_rows($result) > 0)
   {
    echo "<h1 class='co'> This is the Found a pet page </h1>";
  
  
     while($row = mysqli_fetch_array($result))
     {
       echo "
        
        <div id='bo'> 
        </div>
        <br><br>
        
        
        <form >
            
           Species: <input type='text' name='species' value='".$row['found_species']."' readonly> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Breed:<input type='text' name='breeds'  value='".$row['found_breed']."' readonly><br><br>
            Address:<input type='text' name='address'  value='".$row['found_address']."' readonly><br><br>
            <p class='to'> <label>Description:</label><textarea name='description' rows='5' cols='35' readonly>".$row['found_description'] ."</textarea></p>
            
            
        </form>";
   
     }
     
   
   
          
   }
     
   
   ?>
    </body>
</html>
