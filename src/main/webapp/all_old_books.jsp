>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BooksDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Old Books Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
        <style>

            .crd-ho:hover{
                background-color: #f0f1f2;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid">
            <h1 class="text-center">All Old Books</h1>
            <div class="row p-2">
                <%
                    BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
                    List<BookDtls> list2 = dao2.getAllOldBook();
                    for (BookDtls books : list2) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= books.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= books.getBookName()%></p>
                            <p><b>Author: </b><%= books.getAuthor()%></p>
                            <p><b>Category: </b><%= books.getBookCategory()%></p>
                            <div class="row">
                                <a href="view_book_details.jsp?id=<%= books.getBookId() %>" class="btn btn-success btn-sm ml-5">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= books.getPrice()%></button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
