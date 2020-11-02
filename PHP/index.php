<!DOCTYPE html>
<html lang="da" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h1>FiveM rCon</h1>
    <form class="">
      <input type="text" id="command" placeholder="Skriv kommando">
      <input type="submit" onclick="rconPost();" value="Send kommando">
    </form>


    <script type="text/javascript">


      function rconPost() {

        var command = document.getElementById("command").value;

        fetch("rcon.php?command=" + command,
        {
          method: "POST",
        })
        .then(function(res){ return res.json(); })
        .then(function(data){ alert( JSON.stringify( data ) ) })
      }
    </script>
  </body>
</html>
