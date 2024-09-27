<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.DB.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook : Index</title>

<%@include file="all_component/all_css.jsp"%>

<style>
.back-img {
	background: url("img/Illustrada-Portfolio-Banner-2022-09-16.jpg");
	height: 80vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #f0f1f2;
}

.bg-custom {
	background-color: #303f9f;
}

.navbar .nav-item:hover .nav-link {
	background-color: white;
	color: #303f9f;
	border-radius: 15px;
}

.container {
	max-width: 90rem;
}

.row {
	display: flex;
	max-height: 60vh;
	flex-direction: row;
	overflow-x: auto;
	flex-wrap: nowrap;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<%--<h2 class="text-center text-blue"><i class="fa-solid fa-book"></i> E-Book Management System</h2> --%>

		<%
		Connection conn = DBConnect.getConn();
		out.println(conn);
		%>
	</div>

	<!--start recent book-->
	<div class="container">
		<h1 class="text-center mt-2">
			<i class="fa-solid fa-book"></i> Recent Book
		</h1>
		<div class="row"
			style="display: flex; overflow-x: auto; white-space: nowrap;">
			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 1
						</p>
						<p>
							<b>Author: </b>Author 1
						</p>
						<p>
							<b>Category: </b>Category 1
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=1"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 2
						</p>
						<p>
							<b>Author: </b>Author 2
						</p>
						<p>
							<b>Category: </b>Category 2
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=2"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 599</button>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 3
						</p>
						<p>
							<b>Author: </b>Author 3
						</p>
						<p>
							<b>Category: </b>Category 3
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=3"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 699</button>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 4
						</p>
						<p>
							<b>Author: </b>Author 4
						</p>
						<p>
							<b>Category: </b>Category 4
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=4"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 399</button>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 5
						</p>
						<p>
							<b>Author: </b>Author 5
						</p>
						<p>
							<b>Category: </b>Category 5
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=5"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 5
						</p>
						<p>
							<b>Author: </b>Author 5
						</p>
						<p>
							<b>Category: </b>Category 5
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=5"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 5
						</p>
						<p>
							<b>Author: </b>Author 5
						</p>
						<p>
							<b>Category: </b>Category 5
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=5"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 5
						</p>
						<p>
							<b>Author: </b>Author 5
						</p>
						<p>
							<b>Category: </b>Category 5
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=5"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3" style="flex: 0 0 auto; margin-right: 10px;">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample Book 5
						</p>
						<p>
							<b>Author: </b>Author 5
						</p>
						<p>
							<b>Category: </b>Category 5
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=5"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 499</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Add more book items similarly -->
		</div>
		<div class="text-center mt-1">
			<a href="all_recent_books.jsp"
				class="btn btn-danger btn-block text-white">View All</a>
		</div>
	</div>
	<!--end recent book-->

	<hr>
	<!--start new book-->
	<div class="container">
		<h1 class="text-center mt-2">
			<i class="fa-solid fa-book"></i> New Book
		</h1>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Sample New Book
						</p>
						<p>
							<b>Author: </b>New Author
						</p>
						<p>
							<b>Category: </b>New Category
						</p>
						<div class="row text-center">
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a
								href="view_book_details.jsp?id=2"
								class="btn btn-success btn-sm ml-1">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 699</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Add more book items similarly -->
		</div>
		<div class="text-center mt-1">
			<a href="all_new_books.jsp"
				class="btn btn-danger btn-block text-white">View All</a>
		</div>
	</div>
	<!--end new book-->
	<hr>
	<!--start old book-->
	<div class="container">
		<h1 class="text-center mt-2">
			<i class="fa-solid fa-book"></i> Old Book
		</h1>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/javabook.jpg" alt=""
							style="width: 150px; height: 200px;" class="img-thumblin" />
						<p>
							<b>Name: </b>Old Book Name
						</p>
						<p>
							<b>Author: </b>Old Author
						</p>
						<p>
							<b>Category: </b>Old Category
						</p>
						<div class="row text-center">
							<a href="view_book_details.jsp?id=3"
								class="btn btn-success btn-sm ml-5">Details</a>
							<button class="btn btn-danger btn-sm ml-1">&#8360;. 299</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Add more book items similarly -->
		</div>
		<div class="text-center mt-1">
			<a href="all_old_books.jsp"
				class="btn btn-danger btn-block text-white">View All</a>
		</div>
	</div>
	<!--end old book-->
	<hr>



	<%@include file="all_component/footer.jsp"%>
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
