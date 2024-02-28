<!--opt_adv.php-->
<?php
session_start();
$_SESSION['tbl'] ='lavora';

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
    echo "<h1>Interrogazioni
    c. Determinare i vice primari che non hanno mai sostituito il proprio primario</h1><br>";
    echo "sessione corrente ";
    echo $_SESSION['operazione'];
    echo " into ";
    echo $_SESSION['tbl'];
    echo "</div>";
}

    echo $htmlint;
  $conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");

  
    //echo "Connessione riuscita."."<br/>";
    $query= "select cf
    from viceprimario
    except 
    select cfvice
    from sostituzione
    
    ";
    $queryColonne = $query.'LIMIT 1;';
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
    echo "<div><h1>Query eseguita:</h1> <h2 style='text-align:left'>select cf <br>
    from viceprimario <br>
    except <br>
    select cfvice<br>
    from sostituzione <br>
    </h3> </div>";
    echo "<div><br>";
   
    echo '
    <form action="distruggisessione.php" method="post">
    <input type="submit" value="distruggi sessione"/> 
    </form>';
    echo "<a href='home.php'> ritorna nella home </a></div>";
?>
</BODY>
</HTML>

