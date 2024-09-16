<?php

if (isset($_POST['simpan'])) {
    // Periksa apakah semua field yang diperlukan telah diisi
    $lengkap = !empty($_POST['matakul']) && !empty($_POST['judul']) &&
               !empty($_POST['deskripsi']) && !empty($_POST['deadline']);

    if ($lengkap) {
        // Siapkan query SQL
        $sql = "INSERT INTO tugas (matakul, judul, deskripsi, jenis, deadline) VALUES (
            '" . mysqli_real_escape_string($koneksi, $_POST['matakul']) . "',
            '" . mysqli_real_escape_string($koneksi, $_POST['judul']) . "',
            '" . mysqli_real_escape_string($koneksi, $_POST['deskripsi']) . "',
            '" . mysqli_real_escape_string($koneksi, $_POST['jenis']) . "',
            '" . mysqli_real_escape_string($koneksi, $_POST['deadline']) . "'
        )";

        // Eksekusi query dan periksa apakah ada kesalahan
        if (mysqli_query($koneksi, $sql)) {
            echo '<meta http-equiv="refresh" content="0" />';
        } else {
            echo "<b>Error: </b>" . mysqli_error($koneksi);
        }
    } else {
        echo "<div class='alert alert-warning' role='alert'>
        <b><span class='glyphicon glyphicon-exclamation-sign'></span> Gagal Menyimpan:</b>
        <span>Data tidak lengkap, mohon untuk mengisi data dengan benar</span>
        </div>";
    }
}

?>
