<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <cfoutput>
          #request.pageTitle# | #request.appTitle#   
        </cfoutput>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link <cfif Right(CGI.SCRIPT_NAME, Len('index.cfm')) eq 'index.cfm'>active</cfif>" aria-current="page" href="index.cfm">Users in database</a>
                    <a class="nav-link <cfif Right(CGI.SCRIPT_NAME, Len('localUsers.cfm')) eq 'localUsers.cfm'>active</cfif>" aria-current="page" href="localUsers.cfm">Users in session storage</a>
                </div>
          </div>
        </div>
      </nav>
    <body>
    <div class="container-fluid">