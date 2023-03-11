package com.controller;

import com.pojo.Books;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询全部的书籍并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> books = bookService.queryAllBooks();

        model.addAttribute("list", books);

        return "allBook";
    }

    //    添加书籍的请求
    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        System.out.println("addBook=>" + books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向到@RequestMapping("/allbook")请求
    }

    //删除书籍
    @RequestMapping("/deleteBookById")
    public String deleteBookById(int bookID) {
        System.out.println(bookID);
        Books books = new Books(bookID, null, 0, null);
        int i = bookService.deleteBookById(books.getBookID());
        System.out.println("删除了" + i + "条数据");
        return "redirect:/book/allBook";
    }

    //更新书籍
    @RequestMapping("/toUpdatePaper")
    public String toUpdatePaper(int bookID, Model model) {
        Books books = new Books(bookID, null, 0, null);
        Books book = bookService.queryBookById(books);
        model.addAttribute("queryBook", book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        System.out.println(books);
        int i = bookService.updateBook(books);
        System.out.println("受影响的的数据条数" + i);
        return "redirect:/book/allBook";
    }

    //查找书籍
    @RequestMapping("/toQueryPaper")
    public String toQueryPaper() {
        return "queryBook";
    }

    @RequestMapping("/queryBook")
    public String updateBook(Books books, Model model) {
        books.setBookName("null");
        books.setBookCounts(0);
        books.setDetail("null");
        Books book = bookService.queryBookById(books);
        System.out.println(book);
        model.addAttribute("book", book);
        return "queryBookResult";
    }

    @RequestMapping("/queryBook1")
    public String queryBook1(String bookName, Model model) {
        Books book = bookService.queryBookByName(bookName);
        if (book == null) {
            model.addAttribute("error", "没有搜索到内容");
        }
        System.out.println(book);
        List<Books> list = new ArrayList<Books>();
        list.add(book);
        model.addAttribute("list", list);
        return "allBook";
    }

}
