<?php require 'config.php';
session_start(); ?>
<html>

<head>
    <link rel="stylesheet" href="assets/css/Order.css">
    <link rel="stylesheet" href="assets\css\header.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</head>

<body>
    <div class="header">
        <img class="logo" src="assets/img/logo.jpeg">
        <div class="dropdown">
            <input class="btn btn-secondary dropdown-toggle userbutton btn-lg" type="image" src="assets/img/user.png" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            </input>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="AdminProfile.php">Profile</a>
                <a class="dropdown-item" href="home.php">Log Out</a>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-sm navbar-custom ">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="Adminhome.php"><i class="fa fa-fw fa-home"></i>Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_menu_view.php"><i class="fa fa-spoon" aria-hidden="true"></i>
                    Menu</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="admin_combo_view.php"><i class="fa fa-cutlery" aria-hidden="true"></i>
                    Combos</a>
            </li>
            <li class="nav-item  active">
                <a class="nav-link" href="#"><i class="fa fa-book" aria-hidden="true"></i> Orders</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Admin_order_history.php"><i class="fa fa-check-square" aria-hidden="true"></i> Order History</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Sales.php"><i class="fa fa-pie-chart" aria-hidden="true"></i> Sales
                    Report</a>
            </li>
        </ul>
    </nav>

    <nav class="navbar navbar-expand-sm navbar-custom1">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="OrderList_all.php">
                    All</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="OrderList_new.php">
                    New</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="OrderList_prepare.php"> Preparing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="OrderList_complete.php"> Completed</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="OrderList_reject.php"> Reject</a>
            </li>
        </ul>
    </nav>
    <?php

    $sql = "select * from order_today where `status` = '3'  order by `time` DESC;";
    $result = mysqli_query($conn, $sql);
    while ($row = $result->fetch_assoc()) {
        $date = explode(' ', $row['time']);
        $combo = unserialize($row['combo']);
        $food = unserialize($row['food']);
       
    ?>
        
        <div class="order reject">
            <div class="Order-hist">
                <h5><b>Order ID: <?php echo $row['Order_id'] ?></b></h5>
                <h5><b>Customer ID: <?php echo $row['user_id'] ?></b></h5>
            </div>
            <div class="time-date">
                <h6> Date: <?php echo $date[0]; ?>
                    <br>Time: <?php echo $date[1]; ?>
                </h6>
            </div>
            <div class="odetails">
                            <?php
                            if (!empty($food)) {
                                foreach ($food as $item => $itemQuantity) {
                                    echo $item . ' x' . $itemQuantity . '<br>';
                                }
                            }
                            if (!empty($combo)) {
                                foreach ($combo as $item => $itemQuantity) {
                                    echo $item . '(Combo) x' . $itemQuantity . '<br>';
                                }
                            }
                            $id = $row['Order_id'];
                            ?>
                        </div>
        </div>
    <?php } ?>
</body>

</html>