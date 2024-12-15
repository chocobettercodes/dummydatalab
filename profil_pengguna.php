<?php

if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'fetch_data'){

    // get data yang diinput 
    $lokasi = $_GET['negara'] ?? 'id_ID';
    $jumlah = $_GET['jumlah'] ?? 5;

    $url = "https://fakerapi.it/api/v1/persons?_locale=".$lokasi."&_quantity=".$jumlah;

    $response = file_get_contents($url);

    // kembalikan response JSON
    header('Content-Type: application/json');
    // var_dump($response);
    echo $response;
    exit;
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
                                    </tr>
                                </thead>
                                <tbody id="hasil">

                                </tbody>
                            </table>
                        </div>
                    </div>
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
                // console.log(response);
                var hasil = '';
                let no = 1;
                // jika response ada datanya
                if (response.status === 'OK' && response.data) {
                    // tampilkan datanya 
                    response.data.forEach(function(person) {
                        hasil += `
                        <tr>
                            <th scope="row">${no}</th>
                            <td>${person.firstname}</td>
                            <td>${person.lastname}</td>
                            <td>${person.email}</td>
                            <td>${person.phone}</td>
                            <td>${person.birthday}</td>
                        </tr>
                        `;
                        no++;
                    });
                    // Menambahkan data ke dalam tabel
                    $('#myTable tbody').html(hasil);

                    // Menghitung ulang DataTable agar paging berfungsi
                    var table = $('#myTable').DataTable();
                    table.clear(); // Clear previous table data
                    table.rows.add($('#myTable tbody tr')); // Add new rows
                    table.draw(); // Redraw the table with new data
                } else {
                    // Jika tidak ada data, tampilkan pesan
                    $('#myTable tbody').html(`
                    <tr>
                        <td colspan="6" class="text-center">Tidak ada data</td>
                    </tr>
                `);
                }

                // Re-inisialisasi DataTable setelah update
                $('#myTable').DataTable();
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
                $('#result').html('<p>Failed to fetch data.</p>');
            },
        })
    }
    </script>
</body>

</html>