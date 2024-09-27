<?php require 'config.php' ?>
<?php
session_start();
$food_list = '';
$query = 'SELECT * FROM `combo` ORDER BY combo_id DESC LIMIT 1;';
$rse = mysqli_query($conn, $query);
$cid = 0;
while ($row = $rse->fetch_assoc()) {
    $cid = $row['combo_id'];
}

$arr = preg_split('/C/', $cid);

$new_id = intval($arr[1]) + 1;
$new_id = 'C' . $new_id;

if (isset($_POST['submit'])) {

    $comboname = $_POST['cname'];
    $cost = floatval($_POST['cost']);
    $comboitems = array();
    if ($_POST['Comboitem1'] != '') {
        $comboitems[] = $_POST['Comboitem1'];
    }
    if ($_POST['Comboitem2'] != '') {
        $comboitems[] = $_POST['Comboitem2'];
    }
    if ($_POST['Comboitem3'] != '') {
        $comboitems[] = $_POST['Comboitem3'];
    }
    if ($_POST['Comboitem4'] != '') {
        $comboitems[] = $_POST['Comboitem4'];
    }
    $comboitems = serialize($comboitems);
    $visible = 0;
    $imgPath = '';
    if (isset($_FILES["img"]["size"]) && $_FILES["img"]["size"] > 0) {
        $img = "combo_" . date('Y_m_d_H_i_s').'_'.rand(1000,9999);
        $sourcePath = $_FILES['img']['tmp_name'];
        $extension = explode("/", $_FILES["img"]["type"]);
        $targetPath = "./assets/img/menu/" . $img . "." . $extension[1]; // Target path where file is to be stored
        $dbPath = $img . "." . $extension[1];
        if (move_uploaded_file($sourcePath, $targetPath)) {
            $imgPath= $dbPath;
        }
    }
    $sql = "INSERT INTO `combo`(`combo_id`, `name`, `price`, `food_id`, `quantity`,`time_required`, `image`, `visible`) VALUES ('" . $new_id . "','" . $comboname . "','" . $cost . "','" . $comboitems . "','0','5','" . $imgPath . "','" . $visible . "');";
    $insertquery = mysqli_query($conn, $sql);
    if ($insertquery) {
?>
        <script>
            alert('data updated properly');
        </script>
    <?php
    } else {
    ?>
        <script>
            alert('data not updated');
        </script>
<?php
    }
}

function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>

<html>

<head>
    <link rel='stylesheet' href='assets/css/admin_menu_add.css'>
    <link rel='stylesheet' href='assets\css\header.css'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='path/to/font-awesome/css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js' integrity='sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT' crossorigin='anonymous'></script>
</head>

<body>
    <div class='header'>
        <img class='logo' src='assets/img/logo.jpeg'>
        <div class='dropdown'>
            <input class='btn btn-secondary dropdown-toggle userbutton btn-lg' type='image' src='assets/img/user.png' id='dropdownMenuButton' data-bs-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
            </input>
            <div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>
                <a class='dropdown-item' href='AdminProfile.php'>Profile</a>
                <a class='dropdown-item' href='home.php'>Log Out</a>
            </div>
        </div>
    </div>

    <nav class='navbar navbar-expand-sm navbar-custom '>
        <ul class='navbar-nav'>
            <li class='nav-item'>
                <a class='nav-link' href='Adminhome.php'><i class='fa fa-fw fa-home'></i>Home</a>
            </li>
            <li class='nav-item'>
                <a class='nav-link' href='admin_menu_view.php'><i class='fa fa-spoon' aria-hidden='true'></i>
                    Menu</a>
            </li>
            <li class='nav-item active'>
                <a class='nav-link' href='admin_combo_view.php'><i class='fa fa-cutlery' aria-hidden='true'></i>
                    Combos</a>
            </li>
            <li class='nav-item'>
                <a class='nav-link' href='OrderList_all.php'><i class='fa fa-book' aria-hidden='true'></i>
                    Orders</a>
            </li>
            <li class='nav-item'>
                <a class='nav-link' href='Admin_order_history.php'><i class='fa fa-check-square' aria-hidden='true'></i> Order History</a>
            </li>
            <li class='nav-item'>
                <a class='nav-link' href='Sales.php'><i class='fa fa-pie-chart' aria-hidden='true'></i> Sales
                    Report</a>
            </li>
        </ul>
    </nav>

    <nav class='navbar navbar-expand-sm navbar-custom1'>
        <ul class='navbar-nav'>
            <li class='nav-item'>
                <a class='nav-link' href='admin_comb0_view.php'><i class='fa fa-eye' aria-hidden='true'></i>
                    View</a>
            </li>
            <li class='nav-item'>
                <a class='nav-link' href='admin_combo_edit.php'><i class='fa fa-pencil' aria-hidden='true'></i>
                    Edit</a>
            </li>
            <li class='nav-item active'>
                <a class='nav-link' href='admin_combo_add.php'><i class='fa fa-plus' aria-hidden='true'></i> Add</a>
            </li>
        </ul>
    </nav>
    <h3 class='title'>Create a Combo</h3>
    <div class='container'>
        <form action='' method='POST' enctype="multipart/form-data">
            <label for='fname'>Combo name: </label>
            <input type='text' placeholder='Enter the Food Name' id='fname' name='cname'>
            <br>
            <br>
            <label for='Comboitem'>Combo items: </label>
            <div>item 1</div>
            <input id='Comboitem' name='Comboitem1' placeholder='Enter the Item Name'>
            <br><br>
            <div>item 2</div>
            <input id='Comboitem' name='Comboitem2' placeholder='Enter the Item Name'>
            <br><br>
            <div>item 3</div>
            <input id='Comboitem' name='Comboitem3' placeholder='Enter the Item Name'>
            <br><br>
            <div>item 4</div>
            <input id='Comboitem' name='Comboitem4' placeholder='Enter the Item Name'>
            <br><br>
            <label for='cost'>Cost: </label>
            <input type='number' id='cost' name='cost'>
            <br><br>
            <label for='img'>Upload the image</label>
            <input type='File' name='img'>
            <br><br>
            <button type='submit' name='submit' class='savebtn'>SAVE</button>
        </form>
    </div>
    </div>
</body>

</html>