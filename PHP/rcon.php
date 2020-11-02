<?php
require("rcon_class.php");

require("config.php");
$rcon = new q3query($address, $port, $success);
if (!$success) {
  die ("oho, not good");
}
$rcon->setRconpassword($rcon_password);
$rcon->rcon($_GET['command']);
$rcon->quit();
?>
