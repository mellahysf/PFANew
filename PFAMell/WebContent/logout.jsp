
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>logout Page</title>
    </head>
    <body>
        <%            
            session.removeAttribute("userId");
            session.removeAttribute("password");
            session.invalidate();
        %>
    <center>
        <h1>Vous avez d�connect� avec succ�s</h1>
        Pour se connecter � nouveau <a href="login.jsp">cliquez ici</a>.
    </center>
</body>
</html>
