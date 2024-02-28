<?php 
session_start();

if (!isset($_SESSION['tbl']) and !isset($_SESSION['operazione'])){
    echo "Benvenuto, inziare nuova sessione";
    //echo "<a href='home.php'> ritorna alla home</a>";

}else{
    echo "<div> SESSIONE CORRENTE ";
    echo $_SESSION['tbl'];
    echo " ";
    echo $_SESSION['operazione'];
    echo "</div>";
}

    $htmlint = <<<NOW
<HTML>
  <HEAD>
  <link rel="stylesheet" href="style.css">
    
  </HEAD>
<BODY> 
NOW;
echo $htmlint;
echo "<div> <h1> &#128105;&#8205;&#9877;&#65039; PROGETTO OSPEDALE &#127973; matr. 894855  &#128657</h1> </div> ";

$conn = pg_connect("host=localhost port=5432 dbname=Ospedale user=postgres password=unimi");
if (!$conn) {
  echo 'Connessione al database fallita.';
  exit();
}else {
    //echo "Connessione riuscita."."<br/>";
    $query = "SELECT table_name as table FROM information_schema.tables WHERE table_type='BASE TABLE' and table_schema='public' ORDER BY table_name";
    $result = pg_query($conn, $query);
    if (!$result) {
      echo "Si è verificato un errore.<br/>";
      echo pg_last_error($conn);
      exit();
    }
    else {
        print("<div>");
      print ("<form method=\"POST\">");
      print ("<select name=\"tabella\">");
      while ($row = pg_fetch_array($result)) {
        print ("<option value=\"" . htmlspecialchars($row["table"]) . "\">");
        echo $row["table"];
        print ("</option>");
      };
      print ("</select>");
      print ("<select name=\"operazione\">");
      print ("<option value=\"select\">select</option>");
      print("<option value=\"insert\">insert</option>");
      print("<option value=\"update\">update</option>");
      print("<option value=\"delete\">delete</option>");
      print ("</select>");
      print ("<input  type=\"submit\" >");
      print ("</form>");
      print("</div>");

    };
    
    if (isset($_POST['tabella']) ){
        $_SESSION['tbl'] = $_POST['tabella'];
        $_SESSION['operazione'] = $_POST['operazione'];
        $t =  $_SESSION['tbl'];
        $o = $_SESSION['operazione'];
        switch($_SESSION['operazione']){
            case 'select':
                //echo $_SESSION['tbl'].''.$_SESSION['operazione'];
                  
                echo "<div><br>";
   
                echo '
                <form action="select.php" method="post">
                <input type="submit" value="';
                 
                echo " Visualizza la tabella $t";
                echo'"
                </input></form>';
                //echo "<a href='home.php'> ritorna nella home </a></div>";
                break;
            case 'insert':
                
                echo "<div><br>";
   
                echo '
                <form action="insert.php" method="post">
                <input type="submit" value="';
                echo $o; 
                echo " into $t";
                echo'"
                </input></form>';
                
                break;
            case 'update':
                  
                echo "<div><br>";
   
                echo '
                <form action="update.php" method="post">
                <input type="submit" value="';
                echo " Aggiorna la tabella $t";
                echo'"
                </input></form>';
                
                break;
            case 'delete':
                  
                echo "<div><br>";
   
                echo '
                <form action="delete.php" method="post">
                <input type="submit" value="';
                echo " Cancella records nella tabella $t";
                echo'"
                </input></form>';
                
                break;
        };
    };
    
}
echo '<div class="table example">

  <div class="tr">
    <div class="td"><a href="query1.php">Visualizzazione
    a. Del personale in organico nei reparti della struttura</a>

    
    </div>
    <div class="td">
    <a href="query2.php">
    Visualizzazione
    b. Dello storico dei ricoveri di un paziente in una struttura</a>
    </div>
    
  </div>

  <div class="tr">
    <div class="td"><a href="query3.php">
    a. Determinare i vice primari che hanno sostituito esattamente una volta il proprio
    primario</a>
    </div>
    <div class="td"><a href="query4.php">
    b. Determinare i vice primari che hanno sostituito almeno due volte il proprio primario</a>
    </div>
    
  </div>
  <div class="tr">
    <div class="td2"><a href="query5.php">
    c. Determinare i vice primari che non hanno mai sostituito il proprio primario</a>

    </div>
   
    
  </div>

</div>';
  ?>


