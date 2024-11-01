<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<script src="https://kit.fontawesome.com/d15d3f3672.js" crossorigin="anonymous"></script>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Poppins:wght@300;400;500;600&display=swap');

    :root {
        --primary: #303f9f;
        --secondary: #4943a3;
        --white: #ffffff;
        --light-bg: #f8f9fa;
        --transition: all 0.3s ease;
    }

    .top-bar {
        height: 3px;
        background: linear-gradient(90deg, var(--primary), var(--secondary));
    }

    .header-section {
        background: var(--white);
        box-shadow: 0 2px 15px rgba(0,0,0,0.1);
        transition: var(--transition);
    }

    .stick {
        position: sticky;
        top: 0;
        z-index: 1000;
        backdrop-filter: blur(10px);
    }

    .brand-name {
        font-family: 'Playfair Display', serif;
        font-size: 2rem;
        color: var(--secondary);
        text-decoration: none;
        display: flex;
        align-items: center;
        gap: 0.5rem;
    }

    .brand-name i {
        color: var(--primary);
        transition: var(--transition);
    }

    .brand-name:hover i {
        transform: scale(1.1);
    }

    .search-form {
        display: flex;
        gap: 0.5rem;
    }

    .search-form input {
        border-radius: 25px;
        border: 2px solid #eee;
        padding: 0.5rem 1.5rem;
        width: 100%;
        transition: var(--transition);
    }

    .search-form input:focus {
        border-color: var(--primary);
        box-shadow: 0 0 0 3px rgba(48, 63, 159, 0.1);
    }

    .search-form button {
        border-radius: 25px;
        padding: 0.5rem 1.5rem;
        background: linear-gradient(45deg, var(--primary), var(--secondary));
        border: none;
        color: var(--white);
        transition: var(--transition);
    }

    .search-form button:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(48, 63, 159, 0.2);
    }

    .auth-buttons .btn {
        border-radius: 25px;
        padding: 0.5rem 1.5rem;
        transition: var(--transition);
        margin: 0 0.25rem;
    }

    .auth-buttons .btn-success {
        background: linear-gradient(45deg, #28a745, #218838);
        border: none;
    }

    .auth-buttons .btn-primary {
        background: linear-gradient(45deg, var(--primary), var(--secondary));
        border: none;
    }

    .auth-buttons .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }

    .navbar {
        background: linear-gradient(45deg, var(--primary), var(--secondary)) !important;
        padding: 1rem 0;
    }

    .navbar-brand {
        color: var(--white) !important;
        font-size: 1.5rem;
    }

    .nav-link {
        color: var(--white) !important;
        position: relative;
        padding: 0.5rem 1rem !important;
    }

    .nav-link::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        width: 0;
        height: 2px;
        background: var(--white);
        transition: var(--transition);
        transform: translateX(-50%);
    }

    .nav-link:hover::after {
        width: 80%;
    }

    .cart-icon {
        position: relative;
        color: var(--primary);
        margin-right: 1rem;
    }

    .cart-icon:hover {
        transform: scale(1.1);
    }

    /* Modal Styling */
    .modal-content {
        border-radius: 15px;
        border: none;
    }

    .modal-header {
        background: linear-gradient(45deg, var(--primary), var(--secondary));
        color: var(--white);
        border-radius: 15px 15px 0 0;
    }

    .modal-body {
        padding: 2rem;
    }

    .modal-footer {
        border-top: none;
    }

    .modal .btn {
        border-radius: 25px;
        padding: 0.5rem 1.5rem;
        transition: var(--transition);
    }

    @media (max-width: 768px) {
        .brand-name {
            font-size: 1.5rem;
        }

        .auth-buttons .btn {
            padding: 0.4rem 1rem;
            font-size: 0.9rem;
        }
    }
</style>

<style>
    .navbar {
        background: linear-gradient(45deg, var(--primary), var(--secondary)) !important;
        padding: 0.5rem 0;
    }

    .navbar-brand {
        color: var(--white) !important;
        font-size: 1.25rem;
        font-weight: 500;
        margin-right: 2rem;
    }

    .nav-link {
        color: var(--white) !important;
        position: relative;
        padding: 0.75rem 1rem !important;
        font-size: 0.95rem;
        transition: var(--transition);
    }

    .nav-item {
        margin: 0 0.25rem;
    }

    .nav-link::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        width: 0;
        height: 2px;
        background: var(--white);
        transition: var(--transition);
        transform: translateX(-50%);
    }

    .nav-link:hover::after {
        width: 80%;
    }

    .navbar-nav {
        align-items: center;
    }

    @media (max-width: 991px) {
        .navbar-collapse {
            padding: 1rem 0;
        }
        
        .navbar-nav {
            text-align: center;
        }
        
        .nav-item {
            margin: 0.25rem 0;
        }
    }
</style>

<style>
    :root {
        --primary: #303f9f;
        --secondary: #4943a3;
        --white: #ffffff;
    }

    .top-bar {
        height: 3px;
        background: linear-gradient(90deg, var(--primary), var(--secondary));
    }

    .navbar {
        background: linear-gradient(45deg, var(--primary), var(--secondary)) !important;
        padding: 0.75rem 0;
        box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    }

    .navbar-brand {
        font-size: 1.5rem;
        font-weight: 600;
        color: var(--white) !important;
        display: flex;
        align-items: center;
        gap:0.5rem;
    }

    .navbar-brand i {
        font-size: 1.75rem;

    }

    .nav-link {
        color: var(--white) !important;
        padding: 0.5rem 1rem !important;
        position: relative;
    }

    .nav-link::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        width: 0;
        height: 2px;
        background: var(--white);
        transition: all 0.3s ease;
        transform: translateX(-50%);
    }

    .nav-link:hover::after {
        width: 80%;
    }
    
    .ico{
        padding:0.5rem;
            
     }

    .search-form {
        min-width: 300px;
        max-width: 400px;
    }

    .search-form .form-control {
        border-radius: 20px 20px 20px 20px;
        border: none;
        padding: 0.5rem 1rem;
    }

    .btn-search {
        border-radius: 20px 20px 20px 20px;
        background: var(--white);
        color: var(--primary);
        border: none;
        padding: 0.5rem 1rem;
    }

    .btn-search:hover {
        background: #f8f9fa;
        color: var(--secondary);
    }

    .nav-auth {
        display: flex;
        align-items: center;
        gap:1.5rem;
        margin-left:1rem;
    }

    .cart-icon {
        color: var(--white);
        font-size: 1.2rem;
        transition: all 0.3s ease;
    }

    .cart-icon:hover {
        color: #f8f9fa;
        transform: scale(1.1);
    }

    .btn-sm {
        padding: 0.4rem 1rem;
        border-radius: 20px;
    }

    @media (max-width: 991.98px) {
        .navbar-collapse {
            padding: 1rem 0;
        }

        .search-form {
            margin: 1rem 0;
            min-width: 100%;
        }

        .nav-auth {
            flex-wrap: wrap;
            justify-content: center;
            gap: 0.5rem;
        }
    }
</style>

<div class="top-bar"></div>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top">
    <div class="container-fluid">
        <!-- Brand -->
        <a href="index.jsp" class="navbar-brand ">
            <i class="fa-solid fa-book-open-reader fa-bounce me-2"></i>
            BookWorm
        </a>

        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Main navbar content -->
        <div class="collapse navbar-collapse" id="navbarContent">
            <!-- Navigation Links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="all_recent_books.jsp">
                        <i class="fa-solid fa-book-open ico me-1"></i>Recent Books
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_new_books.jsp">
                        <i class="fa-solid fa-book-open ico me-1"></i>New Books
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_old_books.jsp">
                        <i class="fa-solid fa-book-open ico me-1"></i>Old Books
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-solid fa-address-book  ico me-1"></i>Contact
                    </a>
                </li>
            </ul>

            <!-- Search Form -->
            <form class="d-flex search-form me-3" method="post" action="search.jsp">
                <div class="input-group">
                    <input class="form-control" type="search" placeholder="Search books..." name="ch">
                    <button class="btn btn-search" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>

            <!-- Auth Buttons -->
            <div class="nav-auth">
                <c:if test="${not empty userobj}">
                    <a href="checkout.jsp" class="cart-icon me-2">
                        <i class="fas fa-cart-plus"></i>
                    </a>
                    <a href="setting_page.jsp" class="btn btn-success btn-sm me-2">
                        <i class="fa-solid fa-user ico me-1"></i>${userobj.name}
                    </a>
                    <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary btn-sm">
                        <i class="fa-solid fa-right-to-bracket ico me-1"></i>Logout
                    </a>
                </c:if>
                <c:if test="${empty userobj}">
                    <a href="login.jsp" class="btn btn-success btn-sm me-2">
                        <i class="fa-solid fa-right-to-bracket ico me-1"></i>Login
                    </a>
                    <a href="register.jsp" class="btn btn-primary btn-sm">
                        <i class="fa-solid fa-user-plus ico me-1"></i>Register
                    </a>
                </c:if>
            </div>
        </div>
    </div>
</nav>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="all_recent_books.jsp"><i class="fa-solid fa-book-open"></i> Recent Books</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="all_new_books.jsp"><i class="fa-solid fa-book-open"></i> New Books</a>
            </li>

            <li class="nav-item">
                <a class="nav-link active" href="all_old_books.jsp"><i class="fa-solid fa-book-open"></i> Old Books</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <a href="setting_page.jsp" class="btn btn-light my-2 my-sm-0"><i class="fa-solid fa-gear"></i> Setting</a>
            <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fa-solid fa-address-book"></i> Contact Us</button>
        </form>
    </div>
</nav>

<!-- Logout Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">BookWorm Library</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                <h4>Are you sure you want to logout?</h4>
                <div class="mt-4">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <a href="logout" class="btn btn-primary">Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>