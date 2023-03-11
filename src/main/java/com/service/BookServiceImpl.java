package com.service;

import com.dao.BookMapper;
import com.pojo.Books;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BookServiceImpl implements BookService {
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int Id) {
        return bookMapper.deleteBookById(Id);
    }

    public int updateBook(Books book) {
        return bookMapper.updateBook(book);
    }

    public Books queryBookById(Books books) {
        return bookMapper.queryBookById(books);
    }

    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
