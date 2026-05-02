package com.example.demo.service;

import com.example.demo.model.Author;
import com.example.demo.model.Book;
import com.example.demo.repository.AuthorRepository;
import com.example.demo.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LibraryService {

    @Autowired
    private BookRepository bookRepository;
    
    @Autowired
    private AuthorRepository authorRepository;

    public List<Book> getAllBooks() { return bookRepository.findAll(); }
    public List<Author> getAllAuthors() { return authorRepository.findAll(); }
    public void saveBook(Book book) { bookRepository.save(book); }
    public Book getBookById(Long id) { 
        return bookRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + id)); 
    }
    public List<Object[]> getBooksWithAuthors() { return bookRepository.findBooksWithAuthors(); }
}