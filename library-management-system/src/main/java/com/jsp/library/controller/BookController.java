package com.jsp.library.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.jsp.library.entity.Book;
import com.jsp.library.service.BookService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor

public class BookController {

	private final BookService bookservice;

	@GetMapping("/")
	public String displayHome() {
		return "redirect:/books";
	}

	@GetMapping("books")
	public String displayBooks(Model model) {

		List<Book> list = bookservice.fetchAllBooks();
		model.addAttribute("list", list);
		return "book-list";
	}

	@GetMapping("addBookpage")
	public String displayAddBookPage() {

		return "add-book";
	}

	@ModelAttribute
	public String addBook(Book book) {
		bookservice.saveBook(book);
		return "redirect:/books";

	}
}
