<%@page import="com.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BooksDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Recent Books - BookWorm</title>
    <%@include file="all_component/all_css.jsp" %>
    <style>
        :root {
            --primary: #303f9f;
            --secondary: #4943a3;
            --light-bg: #f8f9fa;
            --border-color: #e9ecef;
        }

        body {
            background: var(--light-bg);
        }

        .page-title {
            position: relative;
            color: var(--primary);
            font-size: 2rem;
            font-weight: 600;
            margin: 2rem 0;
            padding-bottom: 0.5rem;
        }

        .page-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 3px;
            background: linear-gradient(90deg, var(--primary), var(--secondary));
        }

        .book-card {
            background: white;
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            height: 100%;
        }

        .book-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .book-image {
            position: relative;
            padding: 1rem;
            background: var(--light-bg);
        }

        .book-image img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .book-card:hover .book-image img {
            transform: scale(1.05);
        }

        .book-details {
            padding: 1.5rem;
        }

        .book-title {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 0.5rem;
            font-size: 1.1rem;
        }

        .book-info {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 0.25rem;
        }

        .book-category {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 15px;
            background: var(--light-bg);
            color: var(--primary);
            font-size: 0.8rem;
            margin: 0.5rem 0;
        }

        .action-buttons {
            display: flex;
            gap: 0.5rem;
            margin-top: 1rem;
        }

        .btn-custom {
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .btn-cart {
            background: var(--primary);
            color: white;
            border: none;
            flex: 1;
        }

        .btn-cart:hover {
            background: var(--secondary);
            color: white;
        }

        .btn-details {
            background: white;
            color: var(--primary);
            border: 2px solid var(--primary);
            flex: 1;
        }

        .btn-details:hover {
            background: var(--primary);
            color: white;
        }

        .price-tag {
            background: #dc3545;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-weight: 600;
            font-size: 0.9rem;
        }

        /* Toast Styling */
        #toast {
            min-width: 300px;
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            background: #333;
            padding: 1rem;
            color: white;
            text-align: center;
            z-index: 1000;
            font-size: 1rem;
            border-radius: 10px;
            visibility: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        #toast.display {
            visibility: visible;
            animation: fadeInOut 3s ease;
        }

        @keyframes fadeInOut {
            0%, 100% { opacity: 0; transform: translate(-50%, 20px); }
            10%, 90% { opacity: 1; transform: translate(-50%, 0); }
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 1.5rem;
            padding: 1.5rem;
        }
    </style>
</head>
<body>
    <%@include file="all_component/navbar.jsp" %>
    
    <c:if test="${not empty addCart}">
        <div id="toast">${addCart}</div>
        <script type="text/javascript">
            showToast();
            function showToast(content) {
                $('#toast').addClass("display");
                $('#toast').html(content);
                setTimeout(() => {
                    $("#toast").removeClass("display");
                }, 3000);
            }
        </script>
        <c:remove var="addCart" scope="session"/>
    </c:if>

    <%
        User u = (User) session.getAttribute("userobj");
    %>

    <div class="container-fluid">
        <h1 class="text-center page-title">Recent Books</h1>
        
        <div class="grid-container">
            <%
                BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
                List<BookDtls> list1 = dao1.getAllRecentBook();
                for (BookDtls book1 : list1) {
            %>
            <div class="book-card">
                <div class="book-image">
                    <img src="book/<%= book1.getPhotoName()%>" alt="<%= book1.getBookName()%>" />
                </div>
                <div class="book-details">
                    <h5 class="book-title"><%= book1.getBookName()%></h5>
                    <p class="book-info"><i class="fas fa-user-edit me-2"></i><%= book1.getAuthor()%></p>
                    <span class="book-category"><%= book1.getBookCategory()%></span>
                    
                    <%
                        if (book1.getBookCategory().equals("Old")) {
                    %>
                    <div class="action-buttons">
                        <a href="view_book_details.jsp?id=<%= book1.getBookId()%>" class="btn btn-custom btn-details">
                            <i class="fas fa-info-circle me-1"></i> View Details
                        </a>
                        <span class="price-tag">₹<%= book1.getPrice()%></span>
                    </div>
                    <%
                        } else {
                    %>
                    <div class="action-buttons">
                        <%
                            if (u == null) {
                        %>
                        <a href="login.jsp" class="btn btn-custom btn-cart">
                            <i class="fas fa-cart-plus me-1"></i> Add to Cart
                        </a>
                        <%
                            } else {
                        %>
                        <a href="Cart?id=<%= book1.getBookId()%>&&uid=<%= u.getId()%>" class="btn btn-custom btn-cart">
                            <i class="fas fa-cart-plus me-1"></i> Add to Cart
                        </a>
                        <%
                            }
                        %>
                        <a href="view_book_details.jsp?id=<%= book1.getBookId()%>" class="btn btn-custom btn-details">
                            Details
                        </a>
                    </div>
                    <div class="text-center mt-2">
                        <span class="price-tag">₹<%= book1.getPrice()%></span>
                    </div>
                    <%
                        }
                    %>
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