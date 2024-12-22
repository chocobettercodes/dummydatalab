<?php
require 'connection.php';

// ambil data dari api
if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'fetch_data'){

    // get data yang diinput 
    $lokasi = $_GET['negara'] ?? 'id_ID';
    $jumlah = $_GET['jumlah'] ?? 5;

    $url = "https://fakerapi.it/api/v1/persons?_locale=".$lokasi."&_quantity=".$jumlah;

    $response = file_get_contents($url);

    // kembalikan response JSON
    header('Content-Type: application/json');
    // var_dump($response);
    $arr_decode = json_decode($response, true);
    // var_dump($arr_decode);

    // cek isi json 
    if($arr_decode['status'] === 'OK'){
        $insert_results = [];
        

        //melakukan perulangan data json 
        foreach($arr_decode['data'] as $person){
            $first_name = $person['firstname'];
            $last_name = $person['lastname'];
            $email = $person['email'];
            $phone = $person['phone'];
            $birthday = $person['birthday'];
            $gender = $person['gender'];
            $street = $person['address']['street'];
            $streetname= $person['address']['streetName'];
            $city = $person['address']['city'];
            $image = $person['image'];

            // insert data ke tabel persons
            $query = "INSERT INTO persons (first_name, last_name, email, phone, birthday, gender, street, streetname, city, image) 
                      VALUES ('$first_name', '$last_name', '$email', '$phone', '$birthday', '$gender', '$street', '$streetname', '$city', '$image')";

            // cek kondisi berhasil tidaknya saat input ke db
            if(mysqli_query($conn, $query)){
                // echo 'data berhasil ditambahkan';
                $insert_results[] = "Data {$first_name} {$last_name} berhasil ditambahkan";
            }else{
                // echo "Error : ". mysqli_error($conn)."\n";
                $insert_results[] = "Error menambahkan {$first_name} {$last_name}: " . mysqli_error($conn);
            }
        }
        echo json_encode([
            'status' => 'OK', 
            'message' => 'Data berhasil ditambahkan']);
    }else{
        echo json_encode(['status' => 'Error', 'message' => 'Gagal mengambil data dari API']);
    }
}

// ambil data untuk detail
// header('Content-Type: application/json');
if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'get_detail'){
    header('Content-Type: application/json');
    $id_profil = $_GET['id'] ?? '';

    $sql = "SELECT * FROM persons WHERE id_persons = '$id_profil'";
    $hasil = mysqli_query($conn, $sql);

    ob_clean();
    // mengecek data 
    if(mysqli_num_rows($hasil)  > 0){
        $dt = mysqli_fetch_assoc($hasil);

        echo json_encode([
            'status' => 'OK', 
            'data' => $dt
        ], JSON_UNESCAPED_SLASHES);
    }else{
        echo json_encode([
            'status' => 'Error',
            'message' => 'Data tidak ditemukan'
        ]);
    }
    exit;
}

// hapus data 
if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'delete'){
    $id_profil = $_GET['id'] ?? '';

    if(!empty($id_profil)){
        $query = "DELETE FROM persons WHERE id_persons = '$id_profil'";
        $hasil = mysqli_query( $conn , $query);
        if ($hasil) {
            echo 'BERHASIL';
            exit();
        } else {
            echo 'Gagal menghapus data';
            exit();
        }
    }else{
        echo 'Id tidak sesuai';
    }
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Link CSS untuk Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <!-- Link CSS untuk DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css" />
    </script>
    <title>
        Dummy Data Lab
    </title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <span class="navbar-brand mb-0 h1">Dummy Data Lab</span>
                <a class="nav-link" href="dashboard.php">Home</a>
                <a class="nav-link active" href="profil_pengguna.php">Data Profil Pengguna<span
                        class="sr-only">(current)</span></a>
                <a class="nav-link" href="health.php">Data Alamat</a>
                <a class="nav-link" href="health.php">Data Buku</a>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br><br><br>
                <h1>
                    <center>DATA DUMMY PROFIL PENGGUNA</center>
                    <hr>
                </h1>
                <div class="row">
                    <div class="col-md-12 d-flex">
                        <div>
                            <select class="form-control" id="negara">
                                <option value="id_ID">INDONESIA</option>
                            </select>
                        </div>
                        <div style="margin-left: 1rem;">
                            <select class="form-control" id="jumlah">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="75">75</option>
                                <option value="100">100</option>
                            </select>
                        </div>
                        <div style="margin-left: 1rem;">
                            <button type="button" class="btn btn-dark" onclick="get_data()">GET DATA</button>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <table id="myTable" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Belakang</th>
                                        <th>Nama Depan</th>
                                        <th>Email</th>
                                        <th>Telepon</th>
                                        <th>Tanggal Lahir</th>
                                        <th width="auto">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody id="hasil">

                                    <?php
                                        // mengambil data dari database
                                        $data_persons = "SELECT * FROM persons";
                                        $hasil = mysqli_query($conn, $data_persons);
                                        $data = mysqli_fetch_all($hasil, MYSQLI_ASSOC);
                                        if(!empty($data)){
                                            $no = 1;
                                            foreach($data as $dummy){
                                                ?>
                                    <tr>
                                        <td scope="row"><?= $no;?></td>
                                        <td><?= $dummy['first_name'];?></td>
                                        <td><?= $dummy['last_name'];?></td>
                                        <td><?= $dummy['email'];?></td>
                                        <td><?= $dummy['phone'];?></td>
                                        <td><?= $dummy['birthday'];?></td>
                                        <td width="auto">
                                            <a href="#" class="btn btn-outline-primary btn-sm" title="Edit">
                                                <i class="fa-regular fa-pen-to-square"></i>
                                            </a>
                                            <a href="#" onclick="get_detail(<?= $dummy['id_persons'];?>)"
                                                class="btn btn-outline-info btn-sm" title="Detail">
                                                <i class="fa-solid fa-circle-info"></i>
                                            </a>
                                            <a href="#" onclick="delete_data(<?= $dummy['id_persons'];?>)"
                                                class="btn btn-outline-danger btn-sm" title="Delete">
                                                <i class="fa-regular fa-trash-can"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php
                                            $no++;
                                            }
                                        }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modaldetail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Detail Profil Pengguna</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <img src="img/profile.jpg" alt="Contoh Gambar" width="100%">
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-4">
                                        Nama Lengkap
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="nama_lengkap">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        Email
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="email"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        Telepon
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="telepon">

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        Tanggal Lahir
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="tanggal_lahir">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        Jenis Kelamin
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="jenis_kelamin">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        Alamat
                                    </div>
                                    <div class="col-md-1">
                                        :
                                    </div>
                                    <div class="col-md-7" id="alamat">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Include jQuery sebelum Bootstrap dan DataTables -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
    </script>
    <!-- Include DataTables JS setelah Bootstrap JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js">
    </script>
    <!-- DataTables script (pastikan ini di bawah jQuery dan Bootstrap) -->
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>


    <script>
    $(document).ready(function() {
        $('#myTable').DataTable({
            "pageLength": 10, // Menampilkan 5 baris per halaman
            "pagingType": "full_numbers" // Tombol paging lengkap
        });
    });

    function get_data() {
        var negara = $('#negara').val();
        var jumlah = $('#jumlah').val();
        var data = {
            action: 'fetch_data',
            negara: negara,
            jumlah: jumlah
        }
        // console.log(data);
        $.ajax({
            url: 'profil_pengguna.php',
            type: 'GET',
            data: data,
            success: function(response) {
                if (response.status === 'OK') {
                    alert(response.message);
                    // load_data();
                } else {
                    alert('Gagal menambahkan data!');
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
            }
        })
    }

    function get_detail(id) {

        var data = {
            id: id,
            action: 'get_detail'
        }
        $.ajax({
            url: 'profil_pengguna.php',
            type: 'GET',
            data: data,
            success: function(response) {

                console.log(response.data.email);
                console.log(response); // Debug respons mentah dari server

                if (response.status === 'OK') {
                    // alert('Status OK');
                    $('#nama_lengkap').text(response.data.first_name + ' ' + response.data.last_name);
                    $('#email').text(response.data.email);
                    $('#email').text(response.data.email);
                    $('#telepon').text(response.data.phone);
                    $('#tanggal_lahir').text(response.data.birthday);
                    $('#jenis_kelamin').text(response.data.gender === 'male' ? 'Laki-laki' : 'Perempuan');
                    $('#alamat').text(response.data.street + ', ' + response.data.streetname + ', ' +
                        response.data.city);
                    $('#modaldetail').modal('show');
                } else {
                    alert('Gagal menampilkan data!');
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
            }
        })
    }

    function delete_data(id) {
        // console.log('id data adalah ', id);
        var data = {
            id: id,
            action: 'delete'
        }
        $.ajax({
            url: 'profil_pengguna.php',
            type: 'GET',
            data: data,
            success: function(response) {
                console.log(response); // Debug respons mentah dari server

                if (response.trim() === 'BERHASIL') {
                    alert("Data berhasil dihapus");
                    location.reload();
                } else {
                    alert('Gagal menampilkan data!');
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
            }
        })
    }
    </script>
</body>

</html>