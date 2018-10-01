<?php
/* Database connection settings */
$host = 'localhost';
$user = 'root';
$pass = 'root';
$db = 'CS_5420_agraham';
$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);
