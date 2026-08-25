<?php
function  Redirect($path)
{
    header("Location: " . BASE_URL .$path);
    exit;
}
?>