<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Header File</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

     <!-- Favicon -->
     <link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>

<body>

    <%HttpSession s1=request.getSession(false);%>


    <!-- Navbar Start -->
    <div class="container-fluid position-relative z-index-1">
        <nav class="navbar navbar-expand-lg navbar-light glass-nav rounded-custom shadow-sm py-2 px-4 mx-lg-5 mt-lg-4 mb-4">
            <a href="" class="navbar-brand d-flex d-lg-none">
                <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Homesteader</span></h1>
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0 w-100 d-flex align-items-center">
                    
                    <form action="searchname" method="post" class="me-auto mb-0 mb-lg-0 mb-2">
                        <input type="text" value="<%out.println(s1.getAttribute("email"));%>" name="email" style="display:none;">
                        <button type="submit" class="btn btn-secondary rounded-custom fw-bold px-4 py-2 shadow-sm"><i class="fa-solid fa-id-card me-2"></i><%out.println(s1.getAttribute("name"));%></button>
                    </form>

                    <a href="home" class="nav-item nav-link fw-bold"><i class="fa-solid fa-house text-primary me-1"></i>Home</a>
                    <a href="aboutl" class="nav-item nav-link fw-bold"><i class="fa-solid fa-globe text-primary me-1"></i>About</a>
                    <a href="service" class="nav-item nav-link fw-bold"><i class="fa-solid fa-building text-primary me-1"></i>Services</a>
                    <a href="farmproduct" class="nav-item nav-link fw-bold"><i class="fa-solid fa-cart-shopping text-primary me-1"></i>Product</a>
                    <a href="contact" class="nav-item nav-link fw-bold"><i class="fa-solid fa-envelope text-primary me-1"></i>Contact</a>
                    <a href="logout" class="nav-item nav-link fw-bold text-danger"><i class="fa-solid fa-power-off me-1"></i>Logout</a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
    
    <style>
    
    .custombutton
    {
      width:120px;
      height:50px;
      
      
     
    }
    
    i{
     font-size:13px;
    }
    
    </style>
    
    
    
    
    