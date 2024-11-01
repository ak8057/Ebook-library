<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BooksDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook : Index</title>

<%@include file="all_component/all_css.jsp"%>

<style>

 /* Custom modern styling */
        :root {
            --primary-color: #2c1810;
            --accent-color: #947666;
            --gold: #d4af37;
            --text-light: #ffffff;
            --card-bg: rgba(255, 255, 255, 0.95);
        }

        body {
           
            font-family: 'Poppins', sans-serif;
        }

        .back-img {
            background: url("img/Illustrada-Portfolio-Banner-2022-09-16.jpg");
            height: 90vh;
            width: 100%;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .back-img::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

      /* Base Hero Text Styling */
.back-img h2 {
    position: relative;
    z-index: 2;
    font-size: clamp(3rem, 8vw, 6rem);
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: 4px;
    padding: 2rem;
    margin: 0;
    
    /* Multi-layer text shadow for depth */
    text-shadow: 
        2px 2px 0px #ffffff,
        4px 4px 0px rgba(0, 0, 0, 0.2),
        6px 6px 20px rgba(0, 0, 0, 0.4);
    
    /* Gradient Text */
    background: linear-gradient(
        135deg,
        #ffffff 0%,
        #f8f8f8 20%,
        #ffd700 40%,
        #ffffff 60%,
        #ffd700 80%,
        #ffffff 100%
    );
    background-size: 200% auto;
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    animation: shine 8s linear infinite;
}

/* Decorative Lines */
.back-img h2::before,
.back-img h2::after {
    content: '';
    position: absolute;
    width: 100px;
    height: 3px;
    background: linear-gradient(90deg, transparent, #ffd700, transparent);
    animation: lineFlow 2s ease-in-out infinite;
}

.back-img h2::before {
    top: 0;
    left: 50%;
    transform: translateX(-50%);
}

.back-img h2::after {
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
}

/* Text Glow Effect on Hover */


/* Optional: Add a stylish background behind text */
.back-img h2 span {
    position: relative;
    display: inline-block;
    padding: 0 15px;
}

.back-img h2 span::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.3);
    transform: translate(-50%, -50%) skew(-15deg);
    z-index: -1;
    backdrop-filter: blur(8px);
    border-radius: 10px;
    transition: all 0.3s ease;
}

.back-img h2:hover span::before {
    width: calc(100% + 20px);
    height: calc(100% + 20px);
    background: rgba(0, 0, 0, 0.4);
}

/* Text Split Effect on Hover */
.back-img h2 span {
    position: relative;
    display: inline-block;
    transition: transform 0.3s ease;
}

.back-img h2:hover span {
    transform: translateY(-2px);
}

/* Animations */
@keyframes shine {
    0% {
        background-position: 0% 50%;
    }
    100% {
        background-position: 200% 50%;
    }
}

@keyframes glow {
    0% {
        text-shadow: 
            0 0 10px rgba(255, 255, 255, 0.8),
            0 0 20px rgba(255, 255, 255, 0.8),
            0 0 30px rgba(255, 215, 0, 0.8),
            0 0 40px rgba(255, 215, 0, 0.6),
            0 0 50px rgba(255, 215, 0, 0.4);
    }
    100% {
        text-shadow: 
            0 0 20px rgba(255, 255, 255, 0.8),
            0 0 30px rgba(255, 255, 255, 0.8),
            0 0 40px rgba(255, 215, 0, 0.8),
            0 0 50px rgba(255, 215, 0, 0.6),
            0 0 60px rgba(255, 215, 0, 0.4);
    }
}

@keyframes lineFlow {
    0% {
        width: 0px;
        opacity: 0;
    }
    50% {
        width: 100px;
        opacity: 1;
    }
    100% {
        width: 0px;
        opacity: 0;
    }
}

/* 3D Effect on Scroll */
@keyframes float {
    0% {
        transform: translateY(0px) rotateX(0deg);
    }
    50% {
        transform: translateY(-10px) rotateX(5deg);
    }
    100% {
        transform: translateY(0px) rotateX(0deg);
    }
}

/* Media Queries for Responsiveness */
@media (max-width: 768px) {
    .back-img h2 {
        font-size: clamp(2rem, 6vw, 4rem);
        letter-spacing: 2px;
        padding: 1rem;
    }
    
    .back-img h2::before,
    .back-img h2::after {
        width: 60px;
    }
}

/* Optional: Add perspective for 3D effects */
.back-img {
    perspective: 1000px;
}

/* Text Reveal Animation on Page Load */
@keyframes revealText {
    0% {
        opacity: 0;
        transform: translateY(50px) rotateX(30deg);
        filter: blur(20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0) rotateX(0);
        filter: blur(0);
    }
}

.back-img h2 {
    animation: revealText 1.5s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
}

        .navbar {
            background: rgba(44, 24, 16, 0.95) !important;
            backdrop-filter: blur(10px);
        }

        .navbar .nav-item .nav-link {
            color: var(--text-light);
            transition: all 0.3s ease;
            position: relative;
        }

        .navbar .nav-item .nav-link::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--gold);
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }

        .navbar .nav-item:hover .nav-link::after {
            width: 100%;
        }

      

      
        .btn {
            border-radius: 25px;
         
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .btn-danger {
            background: linear-gradient(45deg, #FF6B6B, #FF8E8E);
            border: none;
        }

        .btn-success {
            background: linear-gradient(45deg, #4CAF50, #45a049);
            border: none;
        }

       

        h1 {
            color: var(--gold);
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-align: center;
            font-weight: 600;
        }

        .row {
            gap: 0.25rem;
            justify-content: center;
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }

        ::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.1);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--accent-color);
            border-radius: 4px;
        }

        /* Price tag styling */
        .price-tag {
            position: absolute;
            top: 1rem;
            right: 1rem;
            background: var(--gold);
            color: var(--primary-color);
            padding: 5px 15px;
            border-radius: 15px;
            font-weight: bold;
        }



.container {
	max-width: 90rem;
}

.row {
	display: flex;

	max-height: 60vh;
	flex-direction: row;
	flex-wrap: nowrap;
}
</style>
</head>
<body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <%
            User u = (User) session.getAttribute("userobj");
        %>
        <div class="container-fluid back-img">
            <h2 class="text-center text-white"><i class="fa-solid fa-book"></i> E-Book Management System</h2>
        </div>
        <!--start recent book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> Recent Book</h1>
            <div class="row">
                <%
                    BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
                    List<BookDtls> list1 = dao1.getRecentBooks();
                    for (BookDtls book1 : list1) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= book1.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= book1.getBookName()%></p>
                            <p><b>Author: </b><%= book1.getAuthor()%></p>
                            <p><b>Category: </b><%= book1.getBookCategory()%></p>
                            <%
                                if (book1.getBookCategory().equals("Old")) {
                            %>
                            <div class="row">
                                <a href="#" class="btn btn-success btn-sm ml-5">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= book1.getPrice()%></button>
                            </div>
                            <%
                            } else {
                            %>
                            <div class="row text-center">
                                <%
                                    if (u == null) {
                                %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                } else {
                                %>
                                <a href="Cart?bid=<%= book1.getBookId()%>&&uid=<%= u.getId()%>" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                    }
                                %>

                                <a href="view_book_details.jsp?id=<%=book1.getBookId()%>" class="btn btn-success btn-sm ml-1">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= book1.getPrice()%></button>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_recent_books.jsp" class="btn btn-danger btn-block text-white">View All</a>
            </div>
        </div>
        <!--end recent book-->
        <hr>
        <!--start new book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> New Book</h1>
            <div class="row">

                <%
                    BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                    List<BookDtls> list = dao.getNewBooks();
                    for (BookDtls books : list) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= books.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= books.getBookName()%></p>
                            <p><b>Author: </b><%= books.getAuthor()%></p>
                            <p><b>Category: </b><%= books.getBookCategory()%></p>
                            <div class="row">
                                <%
                                    if (u == null) {
                                %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                } else {
                                %>
                                <a href="Cart?bid=<%= books.getBookId()%>&&uid=<%= u.getId()%>" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                    }
                                %>
                                <a href="view_book_details.jsp?id=<%=books.getBookId()%>" class="btn btn-success btn-sm ml-1">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= books.getPrice()%></button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_new_books.jsp" class="btn btn-danger btn-block text-white">View All</a>
            </div>
        </div>
        <!--end new book-->
        <hr>
        <!--start old book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> Old Book</h1>
            <div class="row">
                <%
                    BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
                    List<BookDtls> list2 = dao2.getOldBooks();
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
                                <a href="view_book_details.jsp?id=<%=books.getBookId()%>" class="btn btn-success btn-sm ml-5">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= books.getPrice()%></button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_old_books.jsp" class="btn btn-danger btn-block text-white"> View All</a>
            </div>
        </div>
        <!--end old book-->

        <%@include file="all_component/footer.jsp" %>
    </body>
</html>



<%--  <%@page import="com.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Books"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.dao.BookDao"%>
<%@page import="com.connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
        <style>
            .back-img{
                background: url("img/book3.jpeg");
                height: 57vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #f0f1f2;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <%
            User u = (User) session.getAttribute("userobj");
        %>
        <div class="container-fluid back-img">
            <h2 class="text-center text-white"><i class="fa-solid fa-book"></i> E-Book Management System</h2>
        </div>
        <!--start recent book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> Recent Book</h1>
            <div class="row">
                <%
                    BookDao dao1 = new BookDaoImpl(DBConnection.getConnection());
                    List<Books> list1 = dao1.getRecentBooks();
                    for (Books book1 : list1) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= book1.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= book1.getBookName()%></p>
                            <p><b>Author: </b><%= book1.getAuthor()%></p>
                            <p><b>Category: </b><%= book1.getBookCategory()%></p>
                            <%
                                if (book1.getBookCategory().equals("Old")) {
                            %>
                            <div class="row">
                                <a href="#" class="btn btn-success btn-sm ml-5">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= book1.getPrice()%></button>
                            </div>
                            <%
                            } else {
                            %>
                            <div class="row text-center">
                                <%
                                    if (u == null) {
                                %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                } else {
                                %>
                                <a href="Cart?id=<%= book1.getBookId()%>&&uid=<%= u.getUserId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                    }
                                %>

                                <a href="view_book_details.jsp?id=<%=book1.getBookId()%>" class="btn btn-success btn-sm ml-1">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= book1.getPrice()%></button>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_recent_books.jsp" class="btn btn-danger btn-block text-white">View All</a>
            </div>
        </div>
        <!--end recent book-->
        <hr>
        <!--start new book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> New Book</h1>
            <div class="row">

                <%
                    BookDao dao = new BookDaoImpl(DBConnection.getConnection());
                    List<Books> list = dao.getNewBooks();
                    for (Books books : list) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= books.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= books.getBookName()%></p>
                            <p><b>Author: </b><%= books.getAuthor()%></p>
                            <p><b>Category: </b><%= books.getBookCategory()%></p>
                            <div class="row">
                                <%
                                    if (u == null) {
                                %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                } else {
                                %>
                                <a href="Cart?id=<%= books.getBookId()%>&&uid=<%= u.getUserId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                    }
                                %>
                                <a href="view_book_details.jsp?id=<%=books.getBookId()%>" class="btn btn-success btn-sm ml-1">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= books.getPrice()%></button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_new_books.jsp" class="btn btn-danger btn-block text-white">View All</a>
            </div>
        </div>
        <!--end new book-->
        <hr>
        <!--start old book-->
        <div class="container">
            <h1 class="text-center mt-2"><i class="fa-solid fa-book"></i> Old Book</h1>
            <div class="row">
                <%
                    BookDao dao2 = new BookDaoImpl(DBConnection.getConnection());
                    List<Books> list2 = dao2.getOldBooks();
                    for (Books books : list2) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= books.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= books.getBookName()%></p>
                            <p><b>Author: </b><%= books.getAuthor()%></p>
                            <p><b>Category: </b><%= books.getBookCategory()%></p>
                            <div class="row">
                                <a href="view_book_details.jsp?id=<%=books.getBookId()%>" class="btn btn-success btn-sm ml-5">Details</a>
                                <button  class="btn btn-danger btn-sm ml-1">&#8360;. <%= books.getPrice()%></button>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div class="text-center mt-1">
                <a href="all_old_books.jsp" class="btn btn-danger btn-block text-white"> View All</a>
            </div>
        </div>
        <!--end old book-->

        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
 --%>
