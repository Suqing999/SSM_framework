<%--
  Created by IntelliJ IDEA.
  User: suki
  Date: 2021/10/27
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表--------显示所有书籍</small>
                </h1>
            </div>
        </div>

        <%--增加一个添加书籍的按钮>--%>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allList">显示全部书籍</a>
            </div>

            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">

                <%--查询书籍--%>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float:right">
                    <%-- <span style="color: #c91414;font-weight: bold">%{error}</span>
                    这里应该实现 查询数据库中没有的书籍 显示未查到  这个功能还未实现
                    --%>
                    <input type="text" name="bookName"  placeholder="请输入要查询的书籍名称" required>
                    <input type="submit" class="btn btn-primary" value="查询">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <%--头部是th--%>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--数据从数据库中查询出来  要从list中遍历处理--%>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                            <%--内容是td--%>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">修改</a>
                            |
                                <%--restful 风格的删除--%>
                            <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
