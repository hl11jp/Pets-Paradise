<%@ page import="com.DTO.BlogDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./css/blog.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap"
            rel="stylesheet">
    <link rel="shortcut icon" type="img/png" href="/img/paw-solid.svg"/>
    <title>Pet Paradise</title>
</head>

<body>
<header class="header " id="header">
    <div class="container">
        <a href="./index.jsp" class="logo">
            <img src="./img/paw-solid.svg" style="height: 40px"/>
            <span>Pet Paradise</span>
        </a>
        <nav class="navbar">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a href="./index.jsp">HOME </a>
            <a href="./services.jsp">SERVICES</a>
            <a href="./booking.jsp">SHOWCASE</a>
            <a class="active" href="#">BLOG</a>
            <a href="#">ABOUT</a>
            <a href="#">CONTACT</a>
        </nav>
        <button class="navbar-toggler">
            <i class="fa fa-bars"></i>
        </button>
    </div>
</header>
<section class="carousell">
    <div class="container">
        <p>WELCOME TO OUR PET SERVICES</p>
        <button class="button">Read more</button>
        <i class="fa fa-angle-down"></i>
    </div>
</section>

<!-- body blog -->
<div class="container mt-100 mt-60">
        <%
        List<BlogDTO> listBlog = (List<BlogDTO>) request.getAttribute("LIST_BLOG");
        if (listBlog != null && listBlog.size() > 0) {
            BlogDTO blog = listBlog.get(0);
    %>

    <div class="row">
        <div class="col-12 text-center">
            <div class="section-title mb-4 pb-2">
            </div>
        </div>
    </div>
    <div class="container mt-100 mt-60">
        <div class="row">
            <div class="well blog blog-post rounded border">
                <div class="row">
                    <div class="col-xs-12 md-sm-8 col-md-8 col-lg-8">
                        <div class="image blog-img d-block overflow-hidden position-relative">
                            <img src="./img/mèo dt.jpg" class="img-fluid rounded-top img-responsive" alt="">
                            <div class="post-meta">
                                <a href="blog" class="text-light read-more main-title">Read More <i
                                        class="mdi mdi-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                        <div class="blog-details">
                            <h4 class="mt-4"><a href="BlogContent?blogID=<%=blog.getBlogID()%>"
                                                class="text-dark title"><%=blog.getBlogTitle()%>
                            </a></h4>
                            <p class="text-muted">
                                <%=blog.getBlogDescription()%>
                            </p>
                            <small class="text-muted float-right"><%=blog.getWrittenDate()%>
                            </small>
                        </div>

                    </div>

                </div>
                <div class="pt-3 mt-3 border-top d-flex float-left">
                    <img src="./img/phuong.png" class="img-fluid avatar avatar-ex-sm rounded-pill mr-3 shadow" alt="">
                    <div class="author mt-2">
                        <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark name">Mai Phương Thanh</a></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <%
        }
    %>

        <%
        if (listBlog != null && listBlog.size() > 0) {
    %>
    <div class="row">
        <%
            for (int i = 1; i < listBlog.size(); i++) {
                BlogDTO blog = listBlog.get(i);
        %>

        <div class="col-lg-4 col-md-6 mt-4 pt-2">
            <div class="blog-post rounded border">
                <div class="blog-img d-block overflow-hidden position-relative">
                    <img src="./img/ảnh mèo.jpg" class="img-fluid rounded-top img-responsive" alt="">
                    <div class="overlay rounded-top bg-dark"></div>
                    <div class="post-meta">
                        <a href="javascript:void(0)" class="text-light read-more">Read More <i
                                class="mdi mdi-chevron-right"></i></a>
                    </div>
                </div>
                <div class="content p-3">
                    <small class="text-muted p float-right"><%=blog.getWrittenDate()%>
                    </small>
                    <h4 class="mt-4"><a href="BlogContent?blogID=<%=blog.getBlogID()%>"
                                        class="text-dark title"><%=blog.getBlogTitle()%>
                    </a></h4>
                    <p class="text-muted mt-2">
                        <%=blog.getBlogDescription()%>
                    </p>
                    <div class="pt-3 mt-3 border-top d-flex">
                        <img src="./img/suuf.png" class="img-fluid avatar avatar-ex-sm rounded-pill mr-3 shadow" alt="">
                        <div class="author mt-2">
                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark name"><%=blog.getAuthor()%>
                            </a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%
                }
            }
        %>
    </div>

    <%--    <div class="row">--%>


    <%--        <div class="col-lg-4 col-md-6 mt-4 pt-2">--%>
    <%--            <div class="blog-post rounded border">--%>
    <%--                <div class="blog-img d-block overflow-hidden position-relative">--%>
    <%--                    <img src="./img/ảnh mèo.jpg" class="img-fluid rounded-top img-responsive" alt="">--%>
    <%--                    <div class="overlay rounded-top bg-dark"></div>--%>
    <%--                    <div class="post-meta">--%>
    <%--                        <a href="javascript:void(0)" class="text-light read-more">Read More <i--%>
    <%--                                class="mdi mdi-chevron-right"></i></a>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="content p-3">--%>
    <%--                    <small class="text-muted p float-right">dd/mm/yyyy</small>--%>
    <%--                    <h4 class="mt-4"><a href="javascript:void(0)" class="text-dark title">ZUTUPER BỎ NGHỀ.</a></h4>--%>
    <%--                    <p class="text-muted mt-2">Trong cuộc sống, chắc hẳn ai cũng từng bị cắm sừng, tôi cũng vậy...nhưng--%>
    <%--                        là 7 cái--%>
    <%--                        sừng. Nó khiến tôi buồn lắm.</p>--%>
    <%--                    <div class="pt-3 mt-3 border-top d-flex">--%>
    <%--                        <img src="./img/khoa.png" class="img-fluid avatar avatar-ex-sm rounded-pill mr-3 shadow" alt="">--%>
    <%--                        <div class="author mt-2">--%>
    <%--                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark name">Đăng Khoa Nguên</a>--%>
    <%--                            </h6>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <%--        <div class="col-lg-4 col-md-6 mt-4 pt-2">--%>
    <%--            <div class="blog-post rounded border">--%>
    <%--                <div class="blog-img d-block overflow-hidden position-relative">--%>
    <%--                    <img src="./img/ảnh mèo.jpg" class="img-fluid rounded-top" alt="">--%>
    <%--                    <div class="overlay rounded-top bg-dark"></div>--%>
    <%--                    <div class="post-meta">--%>
    <%--                        <a href="javascript:void(0)" class="text-light read-more">Read More <i--%>
    <%--                                class="mdi mdi-chevron-right"></i></a>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="content p-3">--%>
    <%--                    <small class="text-muted p float-right">dd/mm/yyyy</small>--%>
    <%--                    <h4 class="mt-4"><a href="javascript:void(0)" class="text-dark title">MÈO CON BỎ TRỐN.</a></h4>--%>
    <%--                    <p class="text-muted mt-2">Bài này chỉ muốn nói với mấy bạn là tìm giúp mình con mèo với. Nó láo cá--%>
    <%--                        mà biết--%>
    <%--                        bay. Đặc điểm nhận diện: Biết nói gâu gâu.</p>--%>
    <%--                    <div class="pt-3 mt-3 border-top d-flex">--%>
    <%--                        <img src="./img/dqa.png" class="img-fluid avatar avatar-ex-sm rounded-pill mr-3 shadow" alt="">--%>
    <%--                        <div class="author mt-2">--%>
    <%--                            <h6 class="mb-0"><a href="javascript:void(0)" class="text-dark name">Quang Trần</a></h6>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
    <%--</div>--%>

    <!-- body blog -->

    <section class="map my-5">
        <div class="container">
            <div class="row">
                <div class="left col-lg-4">
                    <div class="title">
            <span>Find Us
            </span>
                        <h1>Additional Info
                        </h1>
                    </div>
                    <div class="contact-info">
                        <div class="phone  d-flex align-self-baseline">
                            <i class="fa fa-phone me-3 mt-1"></i>
                            <div class="detail">
                                <p class="m-0">Phone number</p>
                                <a href="tel:">+(21) 255 088 4943</a>
                            </div>
                        </div>
                        <div class="email d-flex align-self-baseline">
                            <i class="fa fa-envelope me-3  mt-1"></i>
                            <div class="detail">
                                <p class="m-0">Send Email</p>
                                <a href="mailto:">da@mail.com</a>
                            </div>
                        </div>
                        <div class="address d-flex align-self-baseline">
                            <i class="fa fa-map-marker-alt me-3 mt-1"></i>
                            <div class="detail">
                                <p class="m-0">Office Address</p>
                                <p>Address here, 434 Food Honey street, London, UK - 62617.</p>
                            </div>
                        </div>
                    </div>
                    <ul class="social-share">
                        <li class="social-item social-item--facebook">
                            <i class="fab fa-facebook-square"></i>
                        </li>
                        <li class="social-item social-item--twitter">
                            <i class="fab fa-twitter"></i>
                        </li>
                        <li class="social-item social-item--telegram">
                            <i class="fab fa-telegram"></i>
                        </li>
                        <li class="social-item social-item--linkedin">
                            <i class="fab fa-linkedin"></i>
                        </li>
                    </ul>
                </div>

                <div class="right col-lg-6">
                    <iframe class="map w-100 h-100"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4747517025585!2d106.70192131411643!3d10.774904262169763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f46f39fc6c3%3A0xfeb722bd332ca79e!2sDinner!5e0!3m2!1svi!2s!4v1650438098203!5m2!1svi!2s"
                            style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row w-100">
                <div class="col col-12 col-md-6 col-lg-4 ">
                    <div class="item">
                        <img src="./img/footer.png"/>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adihic quibusdam ad
                            laborum tempore uscipit, laborum.
                        </p>
                    </div>
                </div>
                <div class="col col-12 col-md-6 col-lg-2">
                    <div class="item">
                        <h4>Explore</h4>
                        <ul>
                            <li>
                                <i class="fa-solid fa-paw"></i>About us
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                Services
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                More
                            </li>
                            <li>
                                <i class="fa-solid fa-paw"></i>Contact
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col col-12 col-md-6 col-lg-2 ">
                    <div class="item">
                        <h4>Help</h4>
                        <ul>
                            <li>
                                <i class="fa-solid fa-paw"></i>
                                Terms & Conditions
                            </li>
                            <li>
                                <i class="fa-solid fa-paw"></i>
                                Privacy Policy
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                Reporting
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                FAQ
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                Support
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col col-12 col-md-6 col-lg-4 animation-item-4 wow">
                    <div class="item">
                        <div class="submit">
                            <h4>Subscribe to our Newsletter</h4>
                            <p>Enter your email and receive the latest news, updates and special offers from us.
                            </p>
                            <div>
                                <input type="text" id="lname" name="lastname" placeholder="Your email...">
                                <input type="submit" value="Subscribe now">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <section class="backToTop">
        <a href="#header"><i class="fa fa-arrow-down"></i></a>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    </script>
</body>
</html>