<!--opt_adv.php-->
<?php
session_start();
echo $_SESSION['tbl'];
//Controllo se le sessioni sono impostate
if (!isset($_SESSION['tbl']) and !isset($_SESSION['operazione'])){
    echo "<div >";
    echo "<p>sessione appena distrutta";
    echo "<a href='home.php'> ritorna alla home</a></p>";
    echo "</div>";

    exit();
}else{
    $tab = $_SESSION['tbl'];
    echo "<div >";
    echo "<h1 class='center'>Cancellazione record nella tabella:  $tab </h1>  <br>";
    echo "sessione corrente ";
    echo $_SESSION['operazione'];
    echo " into ";
    echo $_SESSION['tbl'];
    echo "</div>";
}

//le funzioni di controllo 
function concat($key, $name):string  {
    if ($key == 'codospedale' or $key =='costo'  ){
        return " and $key=$name";
    }
    return   " and $key='$name'";
  }

  function concatUNO($key, $name):string  {
    if ($key == 'codospedale' or $key =='costo'  ){
        return " $key=$name";
    }
    return   " $key='$name'";
}

  //
  $htmlint = <<<NOW
  <HTML>
    <HEAD>
    <link rel="stylesheet" href="style.css">
  
    </HEAD>
  <BODY> 
  NOW;
    echo $htmlint;
  $conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");

  
    //echo "Connessione riuscita."."<br/>";
    $queryColonne = "SELECT * FROM " . $_SESSION['tbl'] . "  LIMIT 1;"; // solo per sapere il nome delle colonne
    $query = "SELECT * FROM " . $_SESSION['tbl'] . "  ;"; //serve per avere i dati 
    $query2 = "SELECT * FROM " . $_SESSION['tbl'] . "  ;"; //serve per avere i dati 
    

    $resultColonne = pg_query($conn, $queryColonne);
    $nomeColonne = array();
    $result = pg_query($conn, $query);
    $result2 = pg_query($conn, $query);
    
    //QUESTO SERVE SOLO PER LE COLONNE NON TOCCARE
    while($row = pg_fetch_assoc($resultColonne)){
        foreach ($row as $name => $key){ //
            //echo $name ;
            
            array_push($nomeColonne, $name);
        }
    }
    //QUESTO SERVE SOLO PER LE COLONNE NON TOCCARE

/////////////////////////////////////////////////////////////////////////////////////
    //raccolgo i dati con una query senza limit
    $MieiDati =  Array(); //2d array 
    $idx =0; //per indicizzare il mio array 2D
    while($row = pg_fetch_assoc($result2)){
        foreach ($row as $name => $key){ //
            //echo $name ;
            $MieiDati[$idx][$name] = $key;
           
        }
        $idx++;
    }
    // echo $idx;
    /* $p=0;
    while($idx!=0){
        echo $p+1;
        foreach($MieiDati[$p] as $name => $key){
            echo $name . ''. $key;
            echo "<br>";
        }
        $idx --;
        $p++;
    } */ //QUESTO WHILE é per vedere se ho raccolto bene
///////////////////////////////////////////////////////////////////////////7

$lastColonna =  $nomeColonne[count($nomeColonne)-1]; // questo è il nome dell'ultima colonna, dopo di questo metto il delete
//echo count($nomeColonne);   
$colNum = 0;// indicizzo le colonne per sapere quale devo eliminare  

$nomeTabella = $_SESSION['tbl'];
    echo "<br>";
   // echo "<h1>Cancellazione record nella tabella: $nomeTabella </h1>";
     echo '<form method=\'post\'><table class=\'center\'>';
     echo '<tr>';
     
     
     
     // ora stampo la tbl -> è diviso in due cicli -> per le colonne e per i dati 
     foreach($nomeColonne as $singolo){
         // echo "<br> $singolo";
         echo '<th>' . $singolo . '</th>';
         if ($lastColonna == $singolo){
             //metto anche il delete
             echo '<th> DELETE </th>';
             
            }
        };
    echo '</tr>';

    while($row = pg_fetch_assoc($result)){
        echo "<tr>";
        
        foreach ($row as $name => $key){ //
            
            //echo $name ;
            echo '<td>' . $key . '</td>';
            if ($lastColonna == $name){
                //metto anche il delete
                echo '<th> <input type=\'submit\' name=\'delete\'  value='.$colNum.' ></input></th>';
                
            }
            
        }
        $colNum++;
    }
    echo '</tr>
   <tr></form>';
    echo '</table><br>';
    
    echo "</p>";
    
    if (isset($_POST['delete'])){

        
        //implementare quello che hai scritto prima 
        $num = $_POST['delete'];
      //  echo "qua";
        //echo $num;
        $preview = $MieiDati[$num];
        //echo $num;
        echo "<br>";
        $tab = $_SESSION['tbl'];
        $res = "DELETE FROM $tab
                WHERE ";
        //contatore per il primo concat
        $c=0;
        foreach($nomeColonne as $singolo){

            if($c ==0){
                $res = $res.''.concatUno($singolo, $MieiDati[$num][$singolo]);

            }else{

                if (!isset($MieiDati[$num][$singolo])){
    
                }else{
                    $res = $res.''.concat($singolo, $MieiDati[$num][$singolo]);
                }
            }




            $c++;
        }
        echo "<div> <h2>Query richiesta: </h2>";
        echo $res;
        echo "</div>"; if (pg_send_query($conn, $res)) {
            // codice spiegata qui  https://stackoverflow.com/questions/12349230/catching-errors-from-postgresql-to-php messa perché l'errore normale di pg_query rovina la grafica
            $res=pg_get_result($conn);
            if ($res) {
              $state = pg_result_error_field($res, PGSQL_DIAG_SQLSTATE);
              if ($state==0) {
                
            
                
            echo "<div>Cancellazione avvenuta con successo &#129409;🏥<br>";
            echo "Hai appena eliminato il record: ";
            echo '<br><form ><table >';
              echo '<tr>';
      
      
      
          // ora stampo la tbl -> è diviso in due cicli -> per le colonne e per i dati 
          foreach($nomeColonne as $singolo){
              // echo "<br> $singolo";
              echo '<th>' . $singolo . '</th>';
             
          };
          echo '</tr>';
      
       
              echo "<tr>";
      
                  foreach ($preview as $name => $key){ //
      
                      //echo $name ;
                      echo '<td class=\'del\'>' . $key . '</td>';
                      
              
                  }
              $colNum++;
          
          echo '</tr></form>';
          echo '</table><br></div>';
          
              }else {
            echo "<div><h1>c'è stato un problema col tuo query e quindi non è stato inserito </h1></div>";
                
                exit();
              }
            }  
          }else{
            $cancella = pg_query($conn, $res);
          }
       
          
        }
        
  echo "<div><br>";
 
  echo '
  <form action="distruggisessione.php" method="post">
  <input type="submit" value="distruggi sessione"/> 
  </form>';
  echo "<a href='home.php'> ritorna nella home </a></div>";
?>
</BODY>
</HTML>

