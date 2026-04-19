<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/styleadmin.css">
<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
<link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">
</head>

<body>
    <header>
        <div class="logosec">
            <button class="menu-toggle menuicn" id="menuicn" type="button" aria-label="Toggle navigation">
                <i class="fa-solid fa-bars"></i>
            </button>
            <div class="logo">
                <span class="logo-mark"><i class="fa-brands fa-pagelines"></i></span>
                <div>
                    <strong>Homesteader</strong>
                    <small>Admin Workspace</small>
                </div>
            </div>
        </div>

        <div class="searchbar">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" placeholder="Search contacts by name, email, subject, or message" id="districtSearch"
                onkeyup="search()">
        </div>

        <div class="header-profile">
            <div class="header-copy">
                <span class="eyebrow">Control Center</span>
                <h3>Welcome, Admin</h3>
            </div>
            <div class="dp">
                <i class="fa-solid fa-user-shield"></i>
            </div>
        </div>
    </header>

    <div class="main-container">
        <div class="navcontainer">
            <nav class="nav">
                <div class="nav-upper-options">
                    <a href="admindash" class="nav-option option1">
                        <i class="fa-solid fa-table-columns"></i>
                        <span>Dashboard</span>
                    </a>
                    <a href="adminagro" class="nav-option">
                        <i class="fa-solid fa-building-circle-arrow-right"></i>
                        <span>AgroAgency Request</span>
                    </a>
                    <a href="addproductadmin" class="nav-option">
                        <i class="fa-solid fa-plus"></i>
                        <span>Add Product</span>
                    </a>
                    <a href="editproductadmin" class="nav-option">
                        <i class="fa-solid fa-pen-to-square"></i>
                        <span>View and Edit Product</span>
                    </a>
                    <a href="farmreport" class="nav-option">
                        <i class="fa-solid fa-laptop-file"></i>
                        <span>Farmer Report</span>
                    </a>
                    <a href="soilreportadmin" class="nav-option">
                        <i class="fa-solid fa-chart-pie"></i>
                        <span>Soil Analysis</span>
                    </a>
                    <a href="agropage" class="nav-option">
                        <i class="fa-solid fa-building-wheat"></i>
                        <span>AgroAgency</span>
                    </a>
                    <a href="totalfarmeradmin" class="nav-option">
                        <i class="fa-solid fa-circle-user"></i>
                        <span>Farmers</span>
                    </a>
                    <a href="adminstudentrequest" class="nav-option">
                        <i class="fa-solid fa-graduation-cap"></i>
                        <span>Student Training</span>
                    </a>
                    <a href="adminfarmerrequest" class="nav-option">
                        <i class="fa-solid fa-tractor"></i>
                        <span>Farmer Training</span>
                    </a>
                    <a href="blog" class="nav-option">
                        <i class="fa-brands fa-blogger-b"></i>
                        <span>Blog</span>
                    </a>
                    <a href="logoutadmin" class="nav-option logout">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                        <span>Logout</span>
                    </a>
                </div>
            </nav>
        </div>

        <div class="main">
            <section class="hero-panel">
                <div class="hero-content">
                    <span class="hero-label">Daily Overview</span>
                    <h1>Run the Homesteader admin desk with more clarity.</h1>
                    <p>
                        Monitor farmer activity, handle incoming requests, and jump into the most common
                        admin tasks from a cleaner dashboard.
                    </p>
                </div>
                <div class="hero-highlight">
                    <div class="hero-stat">
                        <span class="hero-stat-label">Total Farmers</span>
                        <strong>${totalFarmers}</strong>
                        <small>Live count available on your admin dashboard.</small>
                    </div>
                </div>
            </section>

            <section class="box-container">
                <div class="box box-primary">
                    <div class="text">
                        <span class="topic">Farmer Network</span>
                        <h2 class="topic-heading">${totalFarmers}</h2>
                        <p>Registered farmers currently available in the platform.</p>
                    </div>
                    <div class="box-icon">
                        <i class="fa-solid fa-people-group"></i>
                    </div>
                </div>

                <a href="registersubadmin" class="box box-accent">
                    <div class="text">
                        <span class="topic">Team Access</span>
                        <h2 class="topic-heading">Register Sub Admin</h2>
                        <p>Add support admins so operations can be managed faster.</p>
                    </div>
                    <div class="box-icon">
                        <i class="fa-solid fa-user-tie"></i>
                    </div>
                </a>
            </section>

            <section class="quick-links">
                <a href="adminagro" class="quick-link-card">
                    <i class="fa-solid fa-building-circle-arrow-right"></i>
                    <div>
                        <h3>Review Agro Requests</h3>
                        <p>Approve or reject pending agro agency submissions.</p>
                    </div>
                </a>
                <a href="editproductadmin" class="quick-link-card">
                    <i class="fa-solid fa-box-open"></i>
                    <div>
                        <h3>Manage Products</h3>
                        <p>Update product details and keep the catalog current.</p>
                    </div>
                </a>
                <a href="blog" class="quick-link-card">
                    <i class="fa-solid fa-newspaper"></i>
                    <div>
                        <h3>Publish Content</h3>
                        <p>Upload blogs and communicate new updates to your audience.</p>
                    </div>
                </a>
            </section>

            <section class="report-container">
                <div class="report-header">
                    <div>
                        <span class="section-kicker">Inbox</span>
                        <h2 class="recent-Articles">Recent Contact Requests</h2>
                    </div>
                    <div class="report-meta">
                        <i class="fa-regular fa-address-card"></i>
                        <span>Search updates instantly from the top bar</span>
                    </div>
                </div>

                <div class="table-container">
                    <table id="table">
                        <thead>
                            <tr>
                                <th>Farmer Name</th>
                                <th>Email</th>
                                <th>Subject</th>
                                <th>Message</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${kk}" var="e">
                                <tr>
                                    <td>${e.name}</td>
                                    <td>${e.email}</td>
                                    <td>${e.subject}</td>
                                    <td>${e.message}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>

    <script>
    function search() {
        let filter = document.getElementById("districtSearch").value.toUpperCase();
        let table = document.getElementById("table");
        let tr = table.getElementsByTagName("tr");

        for (let i = 1; i < tr.length; i++) {
            let textcheck = tr[i].textContent || tr[i].innerText;
            if (textcheck.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }

    let menuicn = document.querySelector(".menuicn");
    let nav = document.querySelector(".navcontainer");

    menuicn.addEventListener("click", () => {
        nav.classList.toggle("navclose");
    });
    </script>
</body>
</html>
