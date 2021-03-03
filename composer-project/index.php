<?php
// server.php

echo $_SERVER["REQUEST_URI"];

if (preg_match(('/\/testpage/'), $_SERVER["REQUEST_URI"])) {
    echo "<p>Hello</p>";
} else {
    header("HTTP/1.0 404 Not Found");
}

?>
