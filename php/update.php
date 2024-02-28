<?php 
session_start();
echo $_SESSION['tbl'];
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

function concatQUATTRO($key, $name):string  {
    if ($key == 'codospedale' or $key =='costo'  ){
        return "  $key=$name";
    }
    return   "  $key='$name'";
  }

  function concatTRE($key, $name):string  {
    if ($key == 'codospedale' or $key =='costo'  ){
        return " , $key=$name";
    }
    return   " , $key='$name'";
  }

function checkerRequired($name):string{
    $res = 'required';
        if($_SESSION['tbl']=='esame' and $name=='medico')
        return "";
        if($_SESSION['tbl']=='sostituzione' and $name=='datafine')
        return "";
        if($_SESSION['tbl']=='ricover' and $name=='datadimissione')
        return "";
    return $res;
}

function checkerReadOnly($name):string  {
    $res= 'style="color: blue;   background-color : #d1d1d1;  46px;" readonly';
      if($_SESSION['tbl']!='ospedale' and $name=='codospedale')
      return $res;
      if($_SESSION['tbl']!='reparto' and $name=='nomereparto' )
     return $res;
      if($_SESSION['tbl']!='paziente' and $name=='ts' )
     return $res;
      if($_SESSION['tbl']!='stanza' and $name=='numerostanza' )
     return $res;
      if($_SESSION['tbl']!='turni' and $name=='dataturno' )
     return $res;
      if($_SESSION['tbl']!='dipendente' and $name=='cf' )
     return $res;
     if($_SESSION['tbl']!='esame' and $name=='codesame' )
     return $res;
     if($_SESSION['tbl']!='prenotazione' and $name=='dataprenotazione' )
     return $res;
     if($_SESSION['tbl']!='ricovero' and $name=='dataricovero' )
     return $res;
     if($_SESSION['tbl']!='ambulatorio' and $name=='nomeambulatorio' )
     return $res;
     
     if($_SESSION['tbl']!='letto' and $name=='numeroletto' )
     return $res;
     if($_SESSION['tbl']!='salaoperatorio' and $name=='nomesala' )
     return $res;
return '';
}
$htmlint = <<<NOW
<HTML>
  <HEAD>
    
    <link rel="stylesheet" href="style.css">

  </HEAD>
<BODY> 
NOW;

    echo $htmlint;
    if (!isset($_SESSION['tbl']) and !isset($_SESSION['operazione'])){
        echo "<div >";
        echo "<p>sessione appena distrutta";
        echo "<a href='home.php'> ritorna alla home</a></p>";
        echo "</div>";
    
        exit();
    }else{
        $tab = $_SESSION['tbl'];
        echo "<div >";
        echo "<h1>Aggiorna un record nella tabella: $tab </h1><br>";
        echo "sessione corrente ";
        echo $_SESSION['operazione'];
        echo "  ";
        echo $_SESSION['tbl'];
        echo "</div>";
    }
    
    $conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");
    $tab = $_SESSION['tbl'];
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
$res= "";
$lastColonna =  $nomeColonne[count($nomeColonne)-1]; // questo è il nome dell'ultima colonna, dopo di questo metto il delete
//echo count($nomeColonne);   
$colNum = 0;// indicizzo le colonne per sapere quale devo eliminare  

$nomeTabella = $_SESSION['tbl'];
echo "<p class='center'> </p>" ;
    echo "<br>";
   // echo "<h1>Cancellazione record nella tabella: $nomeTabella </h1>";
     echo '<br><form method=\'post\'><table class=\'center\'>';
     echo '<tr>';
     
     
     
     // ora stampo la tbl -> è diviso in due cicli -> per le colonne e per i dati 
     foreach($nomeColonne as $singolo){
         // echo "<br> $singolo";
         echo '<th>' . $singolo . '</th>';
         if ($lastColonna == $singolo){
             //metto anche il delete
             echo '<th> UPDATE </th>';
             
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
                echo '<th> <input type=\'submit\' name=\'update\'  value='.$colNum.' ></input></th>';
                
            }
            
        }
        $colNum++;
    }
    echo '</tr>
   </form>';
    echo '</table><br>';
    
    echo "</p>";

    if (isset($_POST['update'])){

        
        //implementare quello che hai scritto prima 
        $num = $_POST['update'];
        //echo "qua";
        //echo $num;
        $preview = $MieiDati[$num];
        //echo $num;
        echo "<br>";
        $tab = $_SESSION['tbl'];
        $res = " ";
        $c=0;
        foreach($nomeColonne as $singolo){
            if($c!=0){

                if (!isset($MieiDati[$num][$singolo])){
                    
                }else{
                    $res = $res.''.concat($singolo, $MieiDati[$num][$singolo]);
                }
            }else{
                if (!isset($MieiDati[$num][$singolo])){
                    
                }else{
                    $res = $res.''.concatUNO($singolo, $MieiDati[$num][$singolo]);
                }
            }
            $c++;
        }
        
        //echo "ecco $res";
        $_SESSION['res'] = $res;
        echo "<div><h1 class='center'> tabella che vuoi aggiornare</h1></div>" ;
        
        
        
        echo '<br><form method=\'post\' ><table class=\'center\' >';
          echo '<tr>';
    
    
    
      // ora stampo la tbl -> è diviso in due cicli -> per le colonne e per i dati 
      foreach($nomeColonne as $singolo){
          // echo "<br> $singolo";
          echo '<th>' . $singolo . '</th>';
         
      };
      echo '</tr>';
    
    
          echo "<tr>";
    
              foreach ($preview as $name => $key){ //
                $avviso= checkerReadOnly($name);
                $required = checkerRequired($name);
                  //echo $name ;
                  echo "<td> <input $avviso $required type='text' name='aggiorna[]' value='$key'> </input> </td>";
                  
          
              }
          $colNum++;
      echo "</tr>
      
      <td colspan=10 > <input type='submit'  name='res' value='ok' />
      </input>";
      echo '</table><br></form></div>';
      
            
      
      /* $cancella = pg_query($conn, $res);
      if (!$cancella) {
      echo "Si è verificato un errore.<br/>";
      echo pg_last_error($conn);
      exit();
    }
    else {
        //$cmdtuples = pg_affected_rows($result);
      echo "Cancellazione avvenuta con successo<br><a href='test1.php'>ritorna</a>";
      echo "Hai appena eliminato il record: ";
    };*/

    //qui si inizia l'operazione di aggiornamento 
    //UPDATE $_SESSION['tbl'] OK
    //SET -------valora da racattare con dei form ok 
    //WHERE TRUE AND .... stessa cosa di delete ok 
}
if(isset($_POST['aggiorna'])){
    $c=0; //lo uso solo per fare un if alla prima iterazione
   // $nuovo = array();
    $listaAtrb=$_POST['aggiorna']; //atrb attributi
    $countries = array_combine($nomeColonne, $listaAtrb);
    $sset = "";
    foreach($countries as $key=> $name){
        if ($c==0){
            $sset = $sset.''.concatQUATTRO($key, $name);
            
        }else{
            
            $sset = $sset.''.concatTRE($key, $name);
        }
        $c++;
        echo "<br>";
    }
    
    //echo "sessio: ";
   // echo $_SESSION['res'] ;

    $res = $_SESSION['res'];
    
    $finalmente = "UPDATE $tab \n
    SET $sset \n
    WHERE $res  ;";
    echo "<div>Query richiesta: ";

    echo($finalmente);
    echo "</div>";

    //$aggiorna  = pg_query($conn, $finalmente);
    if (pg_send_query($conn, $finalmente)) {
        // codice spiegata qui  https://stackoverflow.com/questions/12349230/catching-errors-from-postgresql-to-php messa perché l'errore normale di pg_query rovina la grafica
        $res=pg_get_result($conn);
        if ($res) {
          $state = pg_result_error_field($res, PGSQL_DIAG_SQLSTATE);
          if ($state==0) {
            
        echo "<div><h1>Aggiornamento avvenuto con successo! </h1></div>";
          }else {
        echo "<div><h1>c'è stato un problema col tuo query e quindi non è stato inserito </h1></div>";
            
           
          }
        }  
      }else{
        $resultInsert = pg_query($conn, $finalmente);
      }
    if (!$finalmente) {
        echo "Si è verificato un errore.<br/>";
        echo pg_last_error($conn);
        exit();
      }
      else {
          //$cmdtuples = pg_affected_rows($result);
       // echo "<div>Aggiornamento avvenuta con successo<br><a href='home.php'>ritorna nella home </a>";

    };
}
echo '    <div><form action="distruggiSessione.php" method="post">
<input type="submit" value="distruggi sessione"/> 
</form>';

echo "<a href='home.php'> ritorna nella home </a></div>";
?>
</BODY>
</HTML>

