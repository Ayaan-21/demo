<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>
    <h2>Add New Book</h2>
    <p style="color:red">${error}</p>
    <form action="/saveBook" method="POST">
        <label>Title:</label>
        <input type="text" name="title" required><br><br>
        
        <label>Author:</label>
        <select name="author.id" required>
            <c:forEach var="author" items="${authors}">
                <option value="${author.id}">${author.name}</option>
            </c:forEach>
        </select><br><br>
        <button type="submit">Save Book</button>
    </form>
</body>
</html>