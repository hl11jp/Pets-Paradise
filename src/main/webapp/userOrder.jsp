<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="shortcut icon" type="img/png" href="../img/paw-solid.svg" />
    <link rel="stylesheet" href="./css/order.css">

    <link
        href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap"
        rel="stylesheet">
    <title>User - Order</title>

</head>

<body>

    <div class="sidebar">
        <div class="LOGO">
            <img src="./img/paw-solid.svg" alt="" class="img-responsive">
            <div style="font-size: 20px;font-weight: 900;color: #68A7AD; justify-content: center; padding-left: 16px;">
                Pet's Paradise
            </div>
        </div>
        <div>
            <a href="./user.jsp" class="collapsible">Personal Information</a>
        </div>
        <div>
            <a href="./userOrder.jsp" class="collapsible active">Order</a>
        </div>
        <div>
            <a href="./userPetInfo.jsp" class="collapsible">Pet's Info</a>
        </div>
    </div>
    <div class="content">
        <div class="t-container mt-5">
            <div class="container">
                <ul class="responsive-table">
                    <li class="table-header">
                        <div class="col col-1">#</div>
                        <div class="col col-2">Order</div>
                        <div class="col col-3">Number of items</div>
                        <div class="col col-4">Action</div>
                    </li>

                    <li class="table-row">
                        <div class="col col-1" data-label="#">1</div>
                        <div class="col col-2" data-label="Order">user321</div>
                        <div class="col col-3" data-label="NOI">3</div>
                        <div class="col col-4" data-label="Action" onclick="showHideRow('hidden_row1');">
                            <i class="fa fa-arrow-down arrow" aria-hidden="true"></i>
                        </div>
                    </li>
                    <div class="container" id="hidden_row1" class="hidden_row" style="display: none">
                        <ul class="responsive-table p-2 mb-3">
                            <li class="table-header">
                                <div class="col col-1">Name</div>
                                <div class="col col-2">Price</div>
                                <div class="col col-3">Quantity</div>
                                <div class="col col-4">Total</div>
                            </li>

                            <li class="table-row">
                                <div class="col col-1" data-label="Name">product1</div>
                                <div class="col col-2" data-label="Price">20</div>
                                <div class="col col-3" data-label="Quantity">1</div>
                                <div class="col col-4" data-label="Total">20</div>
                            </li>
                            <li class="table-row">
                                <div class="col col-1" data-label="Name">service1</div>
                                <div class="col col-2" data-label="Price">30</div>
                                <div class="col col-3" data-label="Quantity">1</div>
                                <div class="col col-4" data-label="Total">30</div>
                            </li>
                            <li class="table-row">
                                <div class="col col-1" data-label="Name">product2</div>
                                <div class="col col-2" data-label="Price">20</div>
                                <div class="col col-3" data-label="Quantity">1</div>
                                <div class="col col-4" data-label="Total">20</div>
                            </li>

                        </ul>
                    </div>
<%--                    <li class="table-row">--%>
<%--                        <div class="col col-1" data-label="#">1</div>--%>
<%--                        <div class="col col-2" data-label="Order">user321</div>--%>
<%--                        <div class="col col-3" data-label="NOI">3</div>--%>
<%--                        <div class="col col-4" data-label="Action" onclick="showHideRow('hidden_row2');">--%>
<%--                            <i class="fa fa-arrow-down arrow" aria-hidden="true"></i>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <div class="container" id="hidden_row2" class="hidden_row" style="display: none">--%>
<%--                        <ul class="responsive-table mb-3">--%>
<%--                            <li class="table-header">--%>
<%--                                <div class="col col-1">Name</div>--%>
<%--                                <div class="col col-2">Price</div>--%>
<%--                                <div class="col col-3">Quantity</div>--%>
<%--                                <div class="col col-4">Total</div>--%>
<%--                            </li>--%>

<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">product1</div>--%>
<%--                                <div class="col col-2" data-label="Price">20</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">20</div>--%>
<%--                            </li>--%>
<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">service1</div>--%>
<%--                                <div class="col col-2" data-label="Price">30</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">30</div>--%>
<%--                            </li>--%>
<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">product2</div>--%>
<%--                                <div class="col col-2" data-label="Price">20</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">20</div>--%>
<%--                            </li>--%>

<%--                        </ul>--%>
<%--                    </div>--%>

<%--                    <li class="table-row">--%>
<%--                        <div class="col col-1" data-label="#">1</div>--%>
<%--                        <div class="col col-2" data-label="Order">user321</div>--%>
<%--                        <div class="col col-3" data-label="NOI">3</div>--%>
<%--                        <div class="col col-4" data-label="Action" onclick="showHideRow('hidden_row3');">--%>
<%--                            <i class="fa fa-arrow-down arrow" aria-hidden="true"></i>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <div class="container" id="hidden_row3" class="hidden_row" style="display: none">--%>
<%--                        <ul class="responsive-table mb-3">--%>
<%--                            <li class="table-header">--%>
<%--                                <div class="col col-1">Name</div>--%>
<%--                                <div class="col col-2">Price</div>--%>
<%--                                <div class="col col-3">Quantity</div>--%>
<%--                                <div class="col col-4">Total</div>--%>
<%--                            </li>--%>

<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">product1</div>--%>
<%--                                <div class="col col-2" data-label="Price">20</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">20</div>--%>
<%--                            </li>--%>
<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">service1</div>--%>
<%--                                <div class="col col-2" data-label="Price">30</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">30</div>--%>
<%--                            </li>--%>
<%--                            <li class="table-row">--%>
<%--                                <div class="col col-1" data-label="Name">product2</div>--%>
<%--                                <div class="col col-2" data-label="Price">20</div>--%>
<%--                                <div class="col col-3" data-label="Quantity">1</div>--%>
<%--                                <div class="col col-4" data-label="Total">20</div>--%>
<%--                            </li>--%>

<%--                        </ul>--%>
<%--                    </div>--%>

                </ul>
            </div>
        </div>
    </div>

    <script src="./js/order.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
</body>

</html>