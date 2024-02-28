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
    echo "<h1>Visualizzazione
    a. Del personale in organico nei reparti della struttura </h1><br>";
    echo "sessione corrente ";
    echo $_SESSION['operazione'];
    echo " into ";
    echo $_SESSION['tbl'];
    echo "</div>";
}

    echo $htmlint;
  $conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");

  
    //echo "Connessione riuscita."."<br/>";
    $query= "SELECT table_name as mestiere, (codOspedale, nomeReparto) as Presso ,medico.cf, dipendente.nome, dipendente.cognome
    FROM INFORMATION_SCHEMA.TABLES, medico, dipendente, lavora
    where table_name='medico' and medico.cf = dipendente.cf and medico.cf = lavora.cf
    union 
    SELECT table_name as mestiere,(codOspedale, nomeReparto) as Presso,infermiere.cf,dipendente.nome, dipendente.cognome
    FROM INFORMATION_SCHEMA.TABLES, infermiere,dipendente, lavora
    where table_name='infermiere' and infermiere.cf = dipendente.cf  and infermiere.cf = lavora.cf
    union
    SELECT table_name as mestiere,(codOspedale, nomeReparto) as Presso,persamministrativo.cf,dipendente.nome, dipendente.cognome
    FROM INFORMATION_SCHEMA.TABLES, persamministrativo, dipendente, lavora
    where table_name='persamministrativo'and persamministrativo.cf = dipendente.cf  and persamministrativo.cf = lavora.cf
    
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
    echo "<div><h1>Query eseguita:</h1> <h2 style='text-align:left'>SELECT table_name as mestiere, (codOspedale, nomeReparto) as Presso ,medico.cf, dipendente.nome, dipendente.cognome<br>
    FROM INFORMATION_SCHEMA.TABLES, medico, dipendente, lavora<br>
    where table_name='medico' and medico.cf = dipendente.cf and medico.cf = lavora.cf <br>

    union 
<br>
    <br>
    SELECT table_name as mestiere,(codOspedale, nomeReparto) as Presso,infermiere.cf,dipendente.nome, dipendente.cognome<br>
    FROM INFORMATION_SCHEMA.TABLES, infermiere,dipendente, lavora<br>
    where table_name='infermiere' and infermiere.cf = dipendente.cf  and infermiere.cf = lavora.cf
    <br>
    union
    <br>
    <br>
    SELECT table_name as mestiere,(codOspedale, nomeReparto) as Presso,persamministrativo.cf,dipendente.nome, dipendente.cognome<br>
    FROM INFORMATION_SCHEMA.TABLES, persamministrativo, dipendente, lavora<br>
    where table_name='persamministrativo'and persamministrativo.cf = dipendente.cf  and persamministrativo.cf = lavora.cf<br>
   
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

