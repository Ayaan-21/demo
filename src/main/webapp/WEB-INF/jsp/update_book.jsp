<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>
    <h2>Update Book</h2>
    <form action="/saveBook" method="POST">
        <!-- Hidden field for ID so JPA knows to update, not create -->
        <input type="hidden" name="id" value="${book.id}">
        
        <label>Title:</label>
        <input type="text" name="title" value="${book.title}" required><br><br>
        
        <label>Author:</label>
        <select name="author.id" required>
            <c:forEach var="author" items="${authors}">
                <option value="${author.id}" ${author.id == book.author.id ? 'selected' : ''}>${author.name}</option>
            </c:forEach>
        </select><br><br>
        <button type="submit">Update Book</button>
    </form>
</body>
</html>