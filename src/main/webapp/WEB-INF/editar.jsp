<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    </head>

    <body class="container">
        <div class="gap-2 d-flex justify-content-md-end mt-2">
            <form action="/languages/${language.id}/eliminar" method="post" class="">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" class="btn btn-danger" value="Delete">
            </form>
            <div>
                <a href="/languages" class="btn btn-secondary">Dashboard</a>
            </div>
        </div>
        <form action="/languages/${language.id}" method="post">
            <label for="name" class="form-label">Name</label>
            <input class="form-control" type="text" name="name" value="${language.name}" id="name">
            <label for="creator" class="form-label">Creator</label>
            <input class="form-control" type="text" name="creator" value="${language.creator}" id="creator">
            <label for="version" class="form-label">Version</label>
            <input class="form-control" type="text" name="version" value="${language.version}" id="version">
            <button class="btn btn-info">Submit</button>
        </form>
    </body>

    </html>