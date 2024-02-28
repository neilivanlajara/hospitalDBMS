<?php 
session_start();

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
    echo "Inserisci un record nella tabella: $tab <br>";
    echo "sessione corrente ";
    echo $_SESSION['operazione'];
    echo " into ";
    echo $_SESSION['tbl'];
    echo "</div>";
}

function afostrofi($key):bool{ // da sistemare

    //echo ($key);
    echo '<br>';    
    if ($key == 'codospedale' or $key =='numerostanza' or $key == 'numeroletto' ){
        return true;
    }
     return false ;
}

function typeChecker($name):string{
    if ($name=='iniziovisite' or $name=='finevisite' or $name == 'orarioesame'){
        return 'time';
    }
   /* if ($name=='urgenza'){
        return 'color'; //carino ma no 
    }*/ 
    if ($name == 'telefono' ){
        return 'tel';
    }
    if (substr( $name, 0, 4 ) == "data"){
        return 'date';
    }
    return 'text';
}
function checkerRequired($name):string{
    $res = 'required';
        if($_SESSION['tbl']=='esame' and $name=='medico')
        return "";
        if($_SESSION['tbl']=='sostituzione' and $name=='datafine')
        return "";
        if($_SESSION['tbl']=='ricovero' and $name=='datadimissione')
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


echo $htmlint;

$conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");
$tab = $_SESSION['tbl'];



$query = "SELECT * \n
        FROM $tab \n
        ";


//caricare gli attributi della tabella dove voglio fare insert into, quindi basta uno
$resultColonne = pg_query($conn, ''.$query.'LIMIT 1;');





//controllo se il query è andata a buon fine 

if(!$resultColonne){
    echo "Si è verificato un errore.<br/>";
    echo pg_last_error($conn);
    exit();
}else{
    
    $nomeColonne = array(); //estraggo i nomi delle colonne 
    
    while($row = pg_fetch_assoc($resultColonne)){
        foreach($row as $name => $key){
            array_push($nomeColonne, $name);
        }
    }
    
    //test se ho estratto bene i nomi delle colonne 
    //tutti i dati da poter visualizzare
    $displayData = array();
    
    $result = pg_query($conn, $query);
    //controllo se ho raccolto bene i dati 
    while($row = pg_fetch_assoc($result)){
        $temp = array();
        foreach($row as $name => $key){
            $temp[$name]=$key;
        }
        foreach($temp as $t){
            //echo $t;
        }
       array_push($displayData, array_combine($nomeColonne, $temp));
    }

    
    /*foreach($displayData as $name => $key){
        foreach($key as $y => $q){
            echo $y;
            echo $q;
            echo '<br>';
        }
        
    }*/
    /*foreach($nomeColonne as $singolo){
        echo "$singolo <br>";   
    }*/


    foreach($nomeColonne as $singolo){
       
        foreach($displayData as $name => $key){
            foreach($key as $y => $q){
                if ($y == $singolo){
                   // echo $q;
                }

                //echo '<br>';
               // echo '<br>';
            }
            
        }
      
    }

    //stampo i vari form che servono 

    echo "<form method='post' > <table> <tr>" ;

    //stampo le colonne con affianco i form per acquisire i dati inseriti
    foreach($nomeColonne as $singolo){
        echo "<th> $singolo</th>  <br>";

        // qua ci sono due opzioni di input se checkerOnlyRead restitiusce "readonly" signifca che non possiamo modificare ma solo scegliere
        //altrimenti metti un input text normale 
        
            //echo "<td class='ins'>";
            /* foreach($displayData as $name => $key){
                foreach($key as $y => $q){
                    if ($y == $singolo){
                        echo"<option value='$q'>";
                    }
                // echo '<br>';
            }
            
        }*/
      //  echo "<select name='inserisci[]'>";
        echo "<datalist id='$singolo'>
        ";
        foreach($displayData as $name => $key){
            foreach($key as $y => $q){
                if ($y == $singolo){
                   echo " <option value='$q'>";
                }
                // echo '<br>';
            }
            
        }
        echo "</datalist>";
       // echo " </select>";
        
            $checker = checkerRequired($singolo);
            $typechecker = typeChecker($singolo);
            if($typechecker !='text' ){
                echo "<td><input type='$typechecker' name='inserisci[]' $singolo value ='inserisci $singolo'>  </input>";
            }else{
               // echo "<td><input type='text' name='inserisci[]' $singolo value ='inserisci $singolo'>  </input>";
                echo "<td><label  ></label>
                <input list='$singolo' id='$singolo' $checker name='inserisci[]' />";
                
            }
         
        echo "</td>";
    }
    echo "<td> <input type='submit' name='inserisci!'> </input></td> </tr></table> </form>";

    if(isset($_POST['inserisci'])){
    $lista = $_POST['inserisci'];
   /* foreach ($lista as $key){
        echo $key;
        echo '<br>';
    }*/

    //voglio accedere all ultimo valore della lista per togliere la virgola dopo 
   
    $ultimo=  $lista[count($lista)-1];

    $final = array_combine($lista, $nomeColonne);//uso array_combine con $nomeColonne così pulisco i dati che entrano
   
   //ora concateno 
   $insert = "INSERT INTO $tab \n
                VALUES (";
    $c=0;
    foreach($final as $dati => $singolo){ //$singolo sarebbe il nome della colonna 
        //echo $dati.''.$singolo;
        //echo '<br>';
       
        if ($dati!=$ultimo){
            if ($c!=0){
              //  echo "cisei";
                $virgola = ',';
                $insert= $insert.''.$virgola;
              //  echo $insert;
            }
            if (afostrofi($singolo)){ // true è un numero quindi non metto afostrofi 
                $insert = $insert.' '.$dati;
            }else{
                
                $temp= "'$dati'";
                $insert = $insert.''.$temp;
            }
            
        }else{
            if(( $singolo =='datadimissione' or $singolo =='datafine' or $singolo =='medico')and $dati ==''){
                echo "<h1>ok</h1>";
                break;
            }
            if (afostrofi($singolo)){ // true è un numero quindi non metto afostrofi 
                $virgola = ',';
                $insert= $insert.''.$virgola;
                $insert = $insert.' '.$dati;
            }else{
                $virgola = ',';
                $insert= $insert.''.$virgola; //aggiustare questa parte perché con l'inserimento della virgola dopo il ciclo se non è l'ultimo, questo non è più neccessario 
                $temp= "'$dati'";
                $insert = $insert.''.$temp;
            }
            
        }
        $c++;
    }

    //chiudo il query

    $insert = $insert.''.');';
    
    
    echo "<div>Query richiesta: ";

    echo $insert;
    echo "</div>";
    
    //$status = pg_result_status($result, PGSQL_STATUS_STRING);
    //echo "<div>$status</div>";
    if (pg_send_query($conn, $insert)) {
        // codice spiegata qui  https://stackoverflow.com/questions/12349230/catching-errors-from-postgresql-to-php messa perché l'errore normale di pg_query rovina la grafica
        $res=pg_get_result($conn);
        if ($res) {
          $state = pg_result_error_field($res, PGSQL_DIAG_SQLSTATE);
          if ($state==0) {
            
        echo "<div><h1>Inserimento avvenuto con successo! </h1></div>";
          }else {
        echo "<div><h1>c'è stato un problema col tuo query e quindi non è stato inserito </h1></div>";
            
           
          }
        }  
      }else{
        $resultInsert = pg_query($conn, $insert);
      }
      // ora facciamo le operazioni di insert
      var_dump($_SESSION);
      // dopo magari concateniamo usando arraybomb 
    }else{
        //
    }
    // 
}

  echo "<div><br>";
 
  echo '
  <form action="distruggisessione.php" method="post">
  <input type="submit" value="distruggi sessione"/> 
  </form>';
  echo "<a href='home.php'> ritorna nella home </a></div>";





















?>
</body>
</html>