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
    <div class="d-flex justify-content-md-end mt-2">
        <a href="/languages" class="btn btn-secondary">Dashboard</a>
    </div>
    <main class="border border-1 border-black rounded-3 p-4">
        <div class="d-flex gap-2">
            <h1>lenguaje:</h1>
            <h1><c:out value="${language.name}"/></h1>
        </div>
        <p class="text-capitalize text-black size fs-3">creator: <c:out value="${language.creator}"/></p>
        <p class="text-capitalize text-black fs-3">version: <c:out value="${language.version}"/></p>
        <div class="d-flex gap-2">
            <form action="/languages/${language.id}/edit" method="get">
                <input type="submit" class="btn btn-success" value="Edit">
            </form>
            <form action="/languages/${language.id}/eliminar" method="post">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" class="btn btn-danger" value="Delete">
            </form>
        </div>
    </main>
    </body>
    </html>