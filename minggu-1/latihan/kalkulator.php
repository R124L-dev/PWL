<?php
$hasil = null;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $bil1 = $_POST['bil1'];
    $bil2 = $_POST['bil1'];
    $opr = $_POST['opr'];
    if ($opr=="+") {
        $hasil=$bil1+$bil2;
    } else if ($opr=="-") {
        $hasil=$bil1-$bil2;
    } else if ($opr=="*") {
        $hasil=$bil1*$bil2;
    } else {
        $hasil=$bil1/$bil2;
    }
};
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kalkulator Sederhana</title>
</head>
<body>
    <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
        bil 1 <input type="text" name="bil1" value><br>
        bil 2 <input type="text" name="bil2"><br>
        operator
        <select id="opr" name="opr">
            <option value="+">+ (tambah)</option>
            <option value="-">- (kurang)</option>
            <option value="*">* (kali)</option>
            <option value="/">/ (bagi)</option>
        </select>
        <input type="submit" value="=">
        <?php echo $hasil; ?>
</form>
</body>
</html>