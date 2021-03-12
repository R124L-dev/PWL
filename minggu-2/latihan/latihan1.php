<?php
for ($i=1; $i<=5; $i++) {
    for ($j=1; $j<=$i; $j++) {
        echo $i;
    }
    echo "<br>";
}

$i = 1;
while($i <= 5) {
    $j = 1;
    while($j <= $i) {
        echo $i;
        $j++;
    }
    echo "<br>";
    $i++;
}