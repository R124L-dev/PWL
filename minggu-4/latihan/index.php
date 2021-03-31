<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="container mt-5 col-5">
        <form action="proses.php" method="POST">
            <div class="mb-3">
                <label for="nim" class="form-label">NIM</label>
                <input type="text" class="form-control" id="nim" name="nim" placeholder="Masukkan NIM" >
            </div>
            <div class="mb-3">
                <label for="progdi" class="form-label">Program Studi</label>
                <select class="form-select"name="progdi" id="progdi">
                    <option selected>Pilih program studi</option>
                    <option value="A11">Teknik Informatika S1</option>
                    <option value="A12">Sistem Informasi S1</option>
                    <option value="A13">Teknik Informatika D3</option>
                </select>
            </div>
            <div class="row mb-3">
                <label class="form-label">Nilai</label>
                <div class="col">
                    <input type="number" class="form-control" placeholder="Nilai Tugas" id="ntugas" name="ntugas">
                </div>
                <div class="col">
                    <input type="number" class="form-control" placeholder="Nilai UTS" id="nuts" name="nuts">
                </div>
                <div class="col">
                    <input type="number" class="form-control" placeholder="Nilai UAS" id="nuas" name="nuas">
                </div>
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Catatan Khusus</label>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" name="ck1" id="ck1" value="Kehadiran >= 70%">
                    <label class="form-check-label" for="ck1">Kehadiran >= 70%</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" name="ck2" id="ck2" value="Interaktif dikelas">
                    <label class="form-check-label" for="ck2">Interaktif dikelas</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" name="ck3" id="ck3" value="Tidak terlambat mengumpulkan tugas">
                    <label class="form-check-label" for="ck3">Tidak terlambat mengumpulkan tugas</label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" id="submit">SIMPAN</button>
        </form>
    </div>
</body>
</html>