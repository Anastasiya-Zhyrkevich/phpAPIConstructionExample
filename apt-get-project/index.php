<?php
// server.php

if (preg_match(('/\/testpage/'), $_SERVER["REQUEST_URI"])) {
    echo "<p>Hello</p>";
    header("HTTP/1.1 200 OK");
} else {
    header("HTTP/1.0 404 Not Found");
}

?>
