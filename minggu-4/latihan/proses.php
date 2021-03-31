<?php
function n_akhir ($ntugas,$nuts,$nuas) {
  $result = $ntugas*40/100 + $nuts*30/100 + $nuas*30/100;
  return $result ;
};

function huruf ($i){
  if ($i > 84){
    echo "A";
  } elseif ($i <= 84 && $i >= 70){
    echo "B";
  } elseif ($i <= 69 && $i >= 60){
    echo "C";
  } elseif ($i <= 59 && $i >= 50){
    echo "D";
  } else {
    echo "E";
  }
};

function progdi ($i){
  if ($i == "A11"){
    return "Teknik Informatika S1";
  } elseif ($i == "A12"){
    return "Sistem Informasi S1";
  } elseif ($i == "A13"){
    return "Teknik Informatika D3";
  }
};


if (isset($_POST)) {
  $nim = $_POST['nim'];
  $progdi = progdi ($_POST['progdi']);
  $ntugas = (int) $_POST['ntugas'];
  $nuts = (int) $_POST['nuts'];
  $nuas = (int) $_POST['nuas'];
  $catatan_khusus = array($_POST['ck1'],$_POST['ck2'],$_POST['ck3']);
  echo $nim,"<br>";
  echo $progdi,"<br>";
  $nilai_akhir = n_akhir($ntugas,$nuts,$nuas);
  echo $nilai_akhir,"<br>";
  huruf($nilai_akhir);
  echo "<br>";
  foreach ($catatan_khusus as $cks) {
    echo $cks, "<br>";
  }
  
};
?>