<%@ page import="com.DTO.OrderDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.DTO.UserDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%
        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        if (loginUser == null || !loginUser.getRoleID().equals("AD")) {
            response.sendRedirect("login.jsp");
            return;
        }
        String search = request.getParameter("SearchOrder");
        if (search == null) {
            search = "";
        }
    %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link rel="stylesheet" href="css/dropDownAdmin.css">
    <link rel="shortcut icon" type="img/png" href="img/paw-solid.svg"/>
    <link rel="stylesheet" href="css/adminOrder.css">

    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap"
            rel="stylesheet">
    <title>Admin - Order Details</title>

</head>

<body>

<style>
    button {
        background-color: transparent;
        background-repeat: no-repeat;
        border: none;
        cursor: pointer;
        overflow: hidden;
        outline: none;
    }
</style>


<div class="sidebar">
    <div class="LOGO">
        <img src="img/paw-solid.svg" alt="" class="img-responsive">
        <div style="font-size: 20px;font-weight: 900;color: #68A7AD; justify-content: center; padding-left: 16px;">
            Pet's Paradise
        </div>
    </div>
    <div>
        <a href="AdminProduct" class="collapsible">Product</a>
    </div>
    <div>
        <a href="AdminService" class="collapsible">Service</a>
    </div>
    <div>
        <a href="AdminUser" class="collapsible">User</a>
    </div>
    <div>
        <a href="AdminBlog" class="collapsible">Blog</a>
    </div>
    <a class="collapsible active" href="#AdminOrder">Order</a>
</div>

<div class="content">
    <div class="container">

        <div class="row height d-flex justify-content-center align-items-center">

            <div class="col-md-12 searchBar">
                <form action="MainController" method="post">
                    <div class="form">
                        <input type="text" class="form-control form-input" placeholder="Search..." name="SearchOrder"
                               value="<%=search%>">
                        <span class="left-pan btn">
                                <button name="action" value="searchOrder">
                                <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                        </span>
                    </div>
                </form>
                <div></div>
                <div style="display: flex; align-items:center;">
                    <img class="adminIcon" src="" alt="">
                    <!-- <div class="dropdown"> -->
                    <p onclick="myFunction()" class="dropbtn" style="padding-left:12px; padding-top: 12px;">Admin
                    </p>
                    <div id="myDropdown" class="dropdown-content">
                        <a href="./user.jsp">Profile</a>
                        <a href="#">Logout</a>
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="t-container">
        <div class="container">
            <ul class="responsive-table">
                <li class="table-header">
                    <div class="col col-1">#</div>
                    <div class="col col-2">OrderID</div>
                    <div class="col col-3">OrderDate</div>
                    <div class="col col-4">Username</div>
                    <div class="col col-5">FeedBackOrder</div>
                </li>
                <%
                    List<OrderDTO> list = (List<OrderDTO>) request.getAttribute("LIST_ORDER");
                    int index = 1;
                    if (list == null) {
                        response.sendRedirect("error.jsp");
                        return;
                    }
                    for (OrderDTO order : list) {
                        String feedback = order.getFeedBackOrder();
                        if (feedback == null) feedback = "NOT YET";
                %>
                <li class="table-row">
                    <div class="col col-1" data-label="#"><%= index++ %>
                    </div>
                    <div class="col col-2" data-label="OrderID"><%= order.getOrderID() %>
                    </div>
                    <div class="col col-3" data-label="OrderDate"><%= order.getOrderDate() %>
                    </div>
                    <div class="col col-4" data-label="Username"><%= order.getUsername() %>
                    </div>
                    <div class="col col-5" data-label="FeedbackOrder"><%= feedback %>
                    </div>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</div>


<script src="js/admin.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>