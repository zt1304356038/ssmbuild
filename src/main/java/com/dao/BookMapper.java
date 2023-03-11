package com.dao;

import com.pojo.Books;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface BookMapper {
    //增加一本书
    int addBook(Books book);

    //删除一本书
    int deleteBookById(@Param("bookId") int Id);

    //更新一本书
    int updateBook(Books book);

    //查询一本书
    Books queryBookById(Books books);

    Books queryBookByName(String bookName);

    //查询全部的书
    List<Books> queryAllBooks();

}
