<!--opt_adv.php-->
<?php
session_start();
echo $_SESSION['tbl'];

// echo $_POST['Submit1']; sarà nullo perché lo hai già richiesto 
$htmlint = <<<NOW
<HTML>
  <HEAD>
  <link rel="stylesheet" href="style.css">

  </HEAD>
<BODY> 
NOW;
if (!isset($_SESSION['tbl']) and !isset($_SESSION['operazione'])){
    echo "<div >";
    echo "<p>sessione appena distrutta";
    echo "<a href='home.php'> ritorna alla home</a></p>";
    echo "</div>";

    exit();
}else{
    $tab = $_SESSION['tbl'];
    echo "<div >";
    echo "<h1>Stai visualizzando la tabella: $tab </h1><br>";
    echo "sessione corrente ";
    echo $_SESSION['operazione'];
    echo " into ";
    echo $_SESSION['tbl'];
    echo "</div>";
}

    echo $htmlint;
  $conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");

  
    //echo "Connessione riuscita."."<br/>";
    $queryColonne = "SELECT * FROM " . $_SESSION['tbl'] . "  LIMIT 1;";
    $query = "SELECT * FROM " . $_SESSION['tbl'] . "  ;";
    
    $resultColonne = pg_query($conn, $queryColonne);
    $nomeColonne = array();
    $result = pg_query($conn, $query);

    //ciclo i risultati
    while($row = pg_fetch_assoc($resultColonne)){
        foreach ($row as $name => $key){ //
            //echo $name ;
            array_push($nomeColonne, $name);
        }
    }
   // echo '<br>';
   // echo $queryCount;
    //echo $query;

     echo '<br><table>';
        echo '<tr>';

    foreach($nomeColonne as $singolo){
        // echo "<br> $singolo";
        echo '<th>' . $singolo . '</th>';

    };
    echo '</tr>';

    while($row = pg_fetch_assoc($result)){
        echo "<tr>";
            foreach ($row as $name => $key){ //

                //echo $name ;
                echo '<td>' . $key . '</td>';
            }
            
    }
    echo '</tr></form>';
    echo '</table><br>';

    echo "<div><br>";
   
    echo '
    <form action="distruggisessione.php" method="post">
    <input type="submit" value="distruggi sessione"/> 
    </form>';
    echo "<a href='home.php'> ritorna nella home </a></div>";
?>
</BODY>
</HTML>

