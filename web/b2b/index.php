<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WoodyToys B2B!</title>
</head>
<body>
    <h2>liste de produit</h2>

<?php
$host = 'mysql';
$user = getenv('MYSQL_USER');
$pass = getenv('MYSQL_PASSWORD');
$db = getenv('MYSQL_DATABASE');

// Create connection
$conn = new mysqli($host, $user, $pass, $db);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = 'SELECT LIBELLE, PRIX, QSTOCK FROM b2b_db.PRODUIT';
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  echo "<table>   <thead>        <tr>            <th>Nom du produit</th>            <th>Prix</th>            <th>Quantite stock</th>   </thead>    <tbody>";
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["LIBELLE"]. "</td><td>" . $row["PRIX"]. "</td><td>" . $row["QSTOCK"]. "</td></tr>";
  }
  echo "</tbody></table> ";
} else {
  echo "0 results";
}
$conn->close();
?>
</body>
</html>

