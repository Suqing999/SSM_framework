<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>


        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <%--出现的问题: 1. 我们提交了修改的sql请求,但是修改失败,初次考虑是事务问题
                  配置事务完毕,依旧失败
                  2. 看一下sql语句是否能执行成功 , 发现未传递 bookID--%>
            <input type="hidden" name="bookID"  value="${books.bookID}" >
            <div class="form-group">
                <label>书籍名称</label>
                <%--这里的name属性一定要和实体类一致 否则会报null--%>
                <input type="text" name="bookName" class="form-control" value="${books.bookName}" required>
            </div>
            <div class="form-group">
                <label >书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" value="${books.bookCounts}" required>
            </div>
            <div class="form-group">
                <label >书籍描述</label>
                <input type="text" name="detail" class="form-control" value="${books.detail}" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改">


            </div>


        </form>

    </div>


</div>

</body>
</html>