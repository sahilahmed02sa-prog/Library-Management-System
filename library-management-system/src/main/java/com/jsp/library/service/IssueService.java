package com.jsp.library.service;

import java.time.LocalDate;

import org.springframework.stereotype.Service;

import com.jsp.library.entity.Book;
import com.jsp.library.entity.Issue;

@Service
public class IssueService {
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public Issue findIssueById(int id) {
		return issueDao.fetchIssueById(id);
	}
	
	public void returnBook (int id) {
		Issue issue = issueDao.fetchIssueById(id);
		if (issue == null) {
			
			return;
			
			issue.setReturnDate(LocalDate.now());
			issue.setStatus("RETURNED");
			Book book = issue.getBook();
			book.setAvailableCopies(book.getAvailableCopies()+1);
			
			issueDao.updateIssue(issue);
			bookDao.updateBook(book);
		}
	}
	
	
	
	
	
	
	
	

}
