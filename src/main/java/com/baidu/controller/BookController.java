package com.baidu.controller;

import com.baidu.pojo.Books;
import com.baidu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询数据返回页面
    @RequestMapping("/allList")
    public String getAll(Model model){
        List<Books> books = bookService.queryAllBook();
        model.addAttribute("list", books);
        System.out.println(books);
        return "allBook";
    }


    @RequestMapping("/toAddBook")
    public String toAddBook(){

        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books book){
        int i = bookService.addBook(book);
        if (i>0){
            return "redirect:/book/allList";
        }
        return "addBook";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(Model model,Integer id){
        Books books = bookService.queryBooksById(id);
        model.addAttribute("books", books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books book){
        int i = bookService.updateBook(book);
        return "redirect:/book/allList";
    }


    @RequestMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable("id") Integer id){
        bookService.deleteBook(id);
        return "redirect:/book/allList";
    }

    @RequestMapping("/queryBook")
    public String querrybook(String bookName,Model model){
        Books book = bookService.queryBookByName(bookName);

        System.out.println("网"+book);

        List<Books> list = new ArrayList<>();
        list.add(book);

        model.addAttribute("list", list);
        return "allBook";
    }
}
