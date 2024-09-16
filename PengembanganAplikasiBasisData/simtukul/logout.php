<?php
session_start();
session_unset(); // Menghapus semua variabel session
session_destroy(); // Menghancurkan session

// Menghapus cookie session jika ada
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

header("Location: login.php"); // Mengarahkan kembali ke halaman login
exit;
?>

