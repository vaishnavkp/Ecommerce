<?php 
include('connection.php');
include('function.php');
$obj = new myFun();

 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<title></title>
 	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 </head>
 <body>
 	<header style="background-color: darkgrey;">WELCOME</header>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    	<ul class="navbar-nav">
        <li class="nav-item">
                <a href="register.php" class="nav-link active">Create</a>
            </li>
             <li class="nav-item">
                <a href="modify.php" class="nav-link">Modify</a>
            </li>
            <li class="nav-item">
                <a href="delete.php" class="nav-link">Delete</a>
            </li>
              <li class="nav-item">
                <a href="disable.php" class="nav-link">Disable</a>
            </li> 
              


        </ul>
    </nav>

    <form method="post">
    	<table>
    		<tr>
    			<td><label>Name</label></td>
    			<td><input type="text" name="name"></td>
    		</tr>
    		<tr>
    			<td><label>Address</label></td>
    			<td><input type="text" name="address"></td>
    		</tr>
    		<tr>
    			<td><label>Mobile</label></td>
    			<td><input type="text" name="mobile"></td>
    		</tr>
    		<tr>
    			<td><label>Email</label></td>
    			<td><input type="text" name="email"></td>
    		</tr>
    		<tr>
    			<td><label>Password</label></td>
    			<td><input type="password" name="pass"></td>
    		</tr>
    		<tr>
    			<td><label>Shop Name</label></td>
    			<td><input type="text" name="shop"></td>
    		</tr>
    	
    		<tr>
    			<td></td>
    			<td><input type="submit" name="submit" value="Register"></td>
    		</tr>
    	</table>
    </form>

  <?php 
     if (isset($_POST['submit'])) {
     	$name = $_POST['name'];
     	$address = $_POST['address'];
     	$mobile = $_POST['mobile'];
     	$email = $_POST['email'];
     	$pass = $_POST['pass'];
     	$shop = $_POST['shop'];
     	$table = 'product_users';
     	$fields = 'name,address,mobile,email,password,shopName';
     	$values = "'$name','$address','$mobile','$email','$pass','$shop'";
     

     	$obj->register($table,$fields,$values);
     	header('location:managerView.php');

     }

   ?>
 
 </body>
 </html>