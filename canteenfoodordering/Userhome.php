
<html>

<head>
  <link rel="stylesheet" href="assets/css/Userhome.css">
  <link rel="stylesheet" href="assets/css/header.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" media="screen and (max-width: 1101px)" href="assets/css/phone.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
    integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
    crossorigin="anonymous"></script>
</head>

<body>
  <?php
  session_start();
  $_SESSION['cart']=array();
  ?>
  <div class="header">
    <img class="logo" src="assets/img/logo.jpeg">
    <div class="dropdown">
      <input class="btn btn-secondary dropdown-toggle userbutton btn-lg" type="image" src="assets/img/user.png"
        id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      </input>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="Userprofile.php">Profile</a>
        <a class="dropdown-item" href="home.php">Log Out</a>
      </div>
    </div>
  </div>
  </div>

  <nav class="navbar navbar-expand-sm navbar-custom ">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Userhome.php"><i class="fa fa-fw fa-home" aria-hidden="true"></i> Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="menu.php"><i class="fa fa-spoon" aria-hidden="true"></i> Menu</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="combos.php"><i class="fa fa-cutlery" aria-hidden="true"></i> Combos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="OrderHistory.php"><i class="fa fa-check-square" aria-hidden="true"></i> Order
          History</a>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="Cart.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a>
      </li>
    </ul>
  </nav>


  <section id="sec1">
    <img src="assets/img/logo.png" alt="" class="cheflogo">
    <h1><b>THE CANTEEN FOOD ORDERING SYSTEM</b></h1>
  </section>

  <section id="sec2">
    <div class="cards">
      <img src="assets/img/logo1.png" alt="">
      <h1>Place an earlier food order</h1>
    </div>
    <div class="cards">
      <img src="assets/img/logo2.png" class="shift" alt="">
      <h1>No Minimum Order</h1>
    </div>
    <div class="cards">
      <img src="assets/img/logo3.png" alt="">
      <h1> Notify when the order is ready</h1>
    </div>
  </section>

  <section id="sec3">
    <div class="content">CanteenWala is a food ordering system that enables users to reserve their
      meals ahead of time. The users must reserve their meals on the e-menu card. When
      a customer makes a reservation, the chef receives the order and begins to prepare the meal.</div>
    <img src="assets/img/bg2.jpeg" alt="">
  </section>


  <footer>
    <ul class="ull">
      <li class="lii">Blog</li>
      <li><img class="imglogo" src="assets/img/icon.png" width="350px"></li>
      <li class="lii">HelpDesk</li>
    </ul>
    <!-- <div class="bloog" value="blog">
 
         Blog</div>  -->


    <!-- <div class="helpdesk" value="helpdesk"> Help Desk</div> -->
    <hr style="width:90%; margin-left:60px">
    <section class="foot">
      <div class="social">


        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-pinterest"></i></a>
        <a href="#"><i class="fab fa-facebook"></i></a>

        <a href="#"><i class="fab fa-telegram"></i></a>

        <a href="#"><i class="fab fa-instagram"></i></a>
      </div>


    </section>
  </footer>
</body>

</html>