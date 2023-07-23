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
        <table class="table table-bordered">
            <thead class="table-active border border-dark">
                <th>Name</th>
                <th>Creator</th>
                <th>Version</th>
                <th>Action</th>
            </thead>
            <c:forEach var="i" items="${lenguages}">
                <tr class="border border-dark-subtle">
                    <td><a href="/languages/${i.id}">
                            <c:out value="${i.name}" />
                        </a></td>
                    <td>
                        <c:out value="${i.creator}" />
                    </td>
                    <td>
                        <c:out value="${i.version}" />
                    </td>
                    <td>
                        <div class="d-flex gap-2">
                            <form action="/languages/${i.id}/eliminar" method="post">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" class="btn btn-danger" value="Delete">
                            </form>
                            <form action="/languages/${i.id}/edit" method="get">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </form>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <form action="/languages" method="post">
            <label for="name" class="form-label">Name</label>
            <input class="form-control" type="text" name="name" id="name">
            <label for="creator" class="form-label">Creator</label>
            <input class="form-control" type="text" name="creator" id="creator">
            <label for="version" class="form-label">Version</label>
            <input class="form-control" type="text" name="version" id="version">
            <button type="submit" class="btn btn-info">Submit</button>

        </form>
    </body>

    </html>