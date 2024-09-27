<?php
require 'config.php';

/*$sql = "SELECT * FROM `menu` WHERE `name` LIKE ? OR `category` LIKE ?;";

    $result = mysqli_query($conn, $sql);
        while ($row = $result->fetch_assoc()){
            ?>
            <form action="" method="POST">
                <div class="single-menu">

                    <img src='./assets/img/<?php echo $row['image'] ?>' alt="">
                    <div class="menu-content">
                        <h5><b><?php echo $row["name"]; ?></b></h5>
                        <br>
                        <br><?php
        }*/
$stmt = $pdo->prepare("SELECT * FROM `menu` WHERE `name` LIKE ? OR `category` LIKE ?");
$stmt->execute(["%".$_POST["search"]."%", "%".$_POST["search"]."%"]);
$sql='SELECT * FROM `menu` WHERE `name` LIKE ? OR `category` LIKE ?';
$results = $stmt->fetchAll();
if (isset($_POST["ajax"])) { echo json_encode($results); }

?>