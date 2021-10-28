package com.baidu.dao;

import com.baidu.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    int addBook(@Param("books") Books book);
    int deleteBook(Integer id);
    int updateBook(@Param("books") Books book);
    Books queryBooksById(Integer id);
    List<Books> queryAllBook();


    Books queryBookByName(@Param("bookName") String bookName);

}
