package com.service;

import com.pojo.Books;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface BookService {
    //增加一本书
    int addBook(Books book);

    //删除一本书
    int deleteBookById(int Id);

    //更新一本书
    int updateBook(Books book);

    //查询一本书
    Books queryBookById(Books books);

    //查询全部的书
    List<Books> queryAllBooks();

    //通过名字查询书籍
    Books queryBookByName(String bookName);

}
