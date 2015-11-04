<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!-- Das ist die Loginseite von MyPixy im eingeloggten Zustand.-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
       <div>TODO write content</div>
         <!-- Verbindung zum Server bzw Datenbank herstellen-->
        <?php
        $host_name = "db598955698.db.1and1.com";
        $database = "db598955698";
        $user_name = "dbo598955698";
        $password = "ChiaraSarah123";

        $connect = mysqli_connect($host_name, $user_name, $password, $database);
        if (mysqli_connect_errno()) {
            echo "Verbindung zum MySQL Server fehlgeschlagen: " . mysqli_connect_error();
        }  
        
        $stmt = $connect->prepare("INSERT INTO Users (ID, Email, Username, Passwort) VALUES(?, ?, ?, ?)");
        $stmt->bind_param("isss", $id, $email, $username, $passwort);
        
        $id = 111000;
        $email = "chiaraarmbruster96@gmail.com";
        $username = "test123123";
        $passwort = "testme";
        $stmt->execute();
        ?>
    </body>
</html>
