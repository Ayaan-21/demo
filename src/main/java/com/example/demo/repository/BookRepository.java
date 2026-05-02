package com.example.demo.repository;

import com.example.demo.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {
    // Custom Inner Join Query required by the assignment
    @Query("SELECT b.title, a.name FROM Book b INNER JOIN b.author a")
    List<Object[]> findBooksWithAuthors();
}