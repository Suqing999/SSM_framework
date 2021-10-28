package com.baidu.service;

import com.baidu.pojo.Books;

import java.util.List;

public interface BookService {

    int addBook(Books book);
    int deleteBook(Integer id);
    int updateBook(Books book);
    Books queryBooksById(Integer id);
    List<Books> queryAllBook();


    Books queryBookByName(String bookName);
}
