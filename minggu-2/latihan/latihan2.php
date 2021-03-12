<?php

$x = 4;

// menggunakan for
$result = 1;
for ($i=2; $i<=$x; $i++) {
    $result*=$i;
}
echo $result;
echo "<br>";

// menggunakan while
$result = 1;
$i = 2;
while($i<=$x){
    $result*=$i;
    $i++;
}
echo $result;
echo "<br>";

// menggunakan do while
$result = 1;
$i = 1;
do {
  $result*=$i;
  $i++;
} while ($i <= $x);
echo $result;