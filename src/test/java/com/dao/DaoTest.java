package com.dao;

import com.pojo.Books;
import com.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class DaoTest {
    @Test
    public void test1() {
        ApplicationContext Context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = Context.getBean("bookServiceImpl", BookService.class);
        List<Books> books = bookServiceImpl.queryAllBooks();
        for (Books book : books) {
            System.out.println(book);
        }
    }
}
