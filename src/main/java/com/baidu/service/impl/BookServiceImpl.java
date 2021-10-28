package com.baidu.service.impl;

import com.baidu.dao.BookMapper;
import com.baidu.pojo.Books;
import com.baidu.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {

    //调用dao层

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int deleteBook(Integer id) {
        return bookMapper.deleteBook(id);
    }

    @Override
    public int updateBook(Books book) {
        return bookMapper.updateBook(book);
    }

    @Override
    public Books queryBooksById(Integer id) {
        return bookMapper.queryBooksById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
