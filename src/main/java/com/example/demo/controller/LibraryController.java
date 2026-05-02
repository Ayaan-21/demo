package com.example.demo.controller;

import com.example.demo.model.Book;
import com.example.demo.service.LibraryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LibraryController {

    @Autowired
    private LibraryService libraryService;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("books", libraryService.getAllBooks());
        model.addAttribute("joinedData", libraryService.getBooksWithAuthors());
        return "index";
    }

    @GetMapping("/showNewBookForm")
    public String showNewBookForm(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("authors", libraryService.getAllAuthors());
        return "new_book";
    }

    @PostMapping("/saveBook")
    public String saveBook(@ModelAttribute("book") Book book, Model model) {
        try {
            libraryService.saveBook(book);
        } catch (DataIntegrityViolationException e) {
            model.addAttribute("error", "Error: Book title and Author are required.");
            model.addAttribute("authors", libraryService.getAllAuthors());
            return "new_book"; // Return to form if validation fails
        }
        return "redirect:/";
    }

    @GetMapping("/showFormForUpdate/{id}")
    public String showFormForUpdate(@PathVariable(value = "id") long id, Model model) {
        model.addAttribute("book", libraryService.getBookById(id));
        model.addAttribute("authors", libraryService.getAllAuthors());
        return "update_book";
    }
}