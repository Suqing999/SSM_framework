import com.baidu.pojo.Books;
import com.baidu.service.BookService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext cip = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = cip.getBean("bookServiceImpl", BookService.class);
        List<Books> books = bookServiceImpl.queryAllBook();
        System.out.println(books);
    }
}
