<?php 
session_start();

if (isset($_SESSION['user_id']) && isset($_SESSION['username'])) {

 ?>
<!DOCTYPE html>
<html>
     <head>
          <title>Dashboard</title>
          <link rel="stylesheet" type="text/css" href="dashboard_style.css">
     </head>
     <body>
          <nav class="navbar">
               <ul>
                    <li><a href=""></a>Home</li>
                    <li><a href=""></a>Profile</li>
                    <li><a href="logout.php">Logout</a></li>
               </ul>
          </nav>
          <h1>Welcome, <?php echo $_SESSION['name']; ?></h1>
     </body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>