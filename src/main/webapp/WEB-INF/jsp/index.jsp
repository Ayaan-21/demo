<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library Manager</title>
    <style>
        body { font-family: Arial; padding: 20px; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>All Books (CRUD Read)</h2>
    <a href="/showNewBookForm" style="display:inline-block; padding:10px; background:blue; color:white; text-decoration:none;">Add New Book</a>
    <br><br>
    <table>
        <tr><th>ID</th><th>Book Title</th><th>Author Name</th><th>Actions</th></tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.author.name}</td>
                <td><a href="/showFormForUpdate/${book.id}">Update</a></td>
            </tr>
        </c:forEach>
    </table>

    <h2>Inner Join Results (Custom Query)</h2>
    <table>
        <tr><th>Book Title</th><th>Author Name</th></tr>
        <c:forEach var="data" items="${joinedData}">
            <tr><td>${data[0]}</td><td>${data[1]}</td></tr>
        </c:forEach>
    </table>
</body>
</html>