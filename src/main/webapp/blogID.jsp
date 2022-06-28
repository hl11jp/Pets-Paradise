<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.DTO.BlogDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./css/readmore.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap"
            rel="stylesheet"
    />
    <link rel="shortcut icon" type="img/png" href="/img/paw-solid.svg"/>
    <title>Pet Paradise</title>
</head>
<body>
<header class="header" id="header">
    <div class="container">
        <a href="./index.jsp" class="logo">
            <img src="./img/paw-solid.svg" style="height: 40px"/>
            <span>Pet Paradise</span>
        </a>
        <nav class="navbar">
            <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
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


<%
    BlogDTO blog = (BlogDTO) request.getAttribute("BLOG_CONTENT");
    if (blog == null) {
        response.sendRedirect("blog");
        return;
    }
%>
<!-- Body -->
<div class="container body mt-4 pt-2">
    <div class="row pb-3">
        <div class="col-md-8">
            <div class="mt-2">
                <div class="read-title text-center">
                    <h3 style="font-weight: bold">
                        <%=blog.getBlogTitle()%>
                    </h3>
                </div>
                <div class="text-muted float-right">
                    <%=blog.getWrittenDate()%>
                </div>

                <img
                        src="./img/cat1.jpeg"
                        class="img-fluid rounded img-responsive"
                        alt=""
                />
                <div class="text-note">Ảnh mạng</div>
            </div>

            <div class="mt-1">
                <%=blog.getBlogContent()%>
            </div>
            <hr/>
            <div class="footer-body">
                <a href="blog" class="footer-back"
                ><i class="fa fa-arrow-left"></i> &nbsp;
                    <strong>Back To Forum</strong></a
                >
            </div>
        </div>
        <div class="col-md-4 left-content">
            <div class="row justify-content-center">
                <div class="mt-5 wow fadeIn">
                    <div class="row justify-content-center orther">Information</div>
                    <hr class="mt-2 ml-4 mr-4"/>

                    <div class="card">
                        <img
                                src="./img/phuong.png"
                                class="img-info img-responsive"
                                alt="..."
                        />
                        <div class="card-body">
                            <div class="text-center">
                                <h5 class=""><strong><%=blog.getAuthor()%>
                                </strong></h5>
                                <h6 class="text-primary">Author &amp; Writer</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br/>

            <%--            Other blogs--%>

            <div>
                <div class="row justify-content-center orther">Other</div>
                <hr class="mt-2 ml-4 mr-4"/>

                <%
                    List<BlogDTO> listBlog = (List<BlogDTO>) request.getAttribute("BLOG_TEMPLATE");
                    Random r = new Random();
                    int low = 0, high = listBlog.size();
                    int track = 0;
                    while (track < 3) {
                        int index = r.nextInt(high - low) + low;
                        BlogDTO blogTemplate = listBlog.get(index);
                        if (blogTemplate.getBlogID().equals(blog.getBlogID())) continue;
                        else {
                            if (track == 0) {
                %>

                <article class="row justify-content-center">
                    <div class="picture">
                        <a href="#!">
                            <img
                                    class="img-fluid img-responsive pl-4 pr-4 img-more"
                                    src="./img/angry-cat.webp"
                                    alt=""
                            />
                        </a>
                    </div>
                    <div class="title-more mt-1 pl-4 pr-4">
                        <a href="BlogContent?blogID=<%=blogTemplate.getBlogID()%>">
                            <%=blogTemplate.getBlogTitle()%>
                        </a>
                    </div>
                </article>
                <hr class="m-2"/>
                <%

                } else {
                %>

                <article class="row justify-content-center">
                    <div class="title-more-bonus pl-4 pr-4">
                        <a href="BlogContent?blogID=<%=blogTemplate.getBlogID()%>">
                            <%=blogTemplate.getBlogTitle()%>
                        </a>
                    </div>
                </article>
                <hr class="m-2"/>

                <%
                            }
                            track++;
                        }
                    }

                %>


            </div>
        </div>
    </div>
</div>
<section class="map my-5">
    <div class="container">
        <div class="row">
            <div class="left col-lg-4">
                <div class="title">
                    <span>Find Us </span>
                    <h1>Additional Info</h1>
                </div>
                <div class="contact-info">
                    <div class="phone d-flex align-self-baseline">
                        <i class="fa fa-phone me-3 mt-1"></i>
                        <div class="detail">
                            <p class="m-0">Phone number</p>
                            <a href="tel:">+(21) 255 088 4943</a>
                        </div>
                    </div>
                    <div class="email d-flex align-self-baseline">
                        <i class="fa fa-envelope me-3 mt-1"></i>
                        <div class="detail">
                            <p class="m-0">Send Email</p>
                            <a href="mailto:">da@mail.com</a>
                        </div>
                    </div>
                    <div class="address d-flex align-self-baseline">
                        <i class="fa fa-map-marker-alt me-3 mt-1"></i>
                        <div class="detail">
                            <p class="m-0">Office Address</p>
                            <p>
                                Address here, 434 Food Honey street, London, UK - 62617.
                            </p>
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
                <iframe
                        class="map w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4747517025585!2d106.70192131411643!3d10.774904262169763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f46f39fc6c3%3A0xfeb722bd332ca79e!2sDinner!5e0!3m2!1svi!2s!4v1650438098203!5m2!1svi!2s"
                        style="border: 0"
                        allowfullscreen=""
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"
                ></iframe>
            </div>
        </div>
    </div>
</section>

<footer>
    <div class="container">
        <div class="row w-100">
            <div class="col col-12 col-md-6 col-lg-4">
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
                        <li><i class="fa-solid fa-paw"></i>About us</li>
                        <li><i class="fa-solid fa-paw"></i> Services</li>
                        <li><i class="fa-solid fa-paw"></i> More</li>
                        <li><i class="fa-solid fa-paw"></i>Contact</li>
                    </ul>
                </div>
            </div>

            <div class="col col-12 col-md-6 col-lg-2">
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
                        <li><i class="fa-solid fa-paw"></i> Reporting</li>
                        <li><i class="fa-solid fa-paw"></i> FAQ</li>
                        <li><i class="fa-solid fa-paw"></i> Support</li>
                    </ul>
                </div>
            </div>
            <div class="col col-12 col-md-6 col-lg-4 animation-item-4 wow">
                <div class="item">
                    <div class="submit">
                        <h4>Subscribe to our Newsletter</h4>
                        <p>
                            Enter your email and receive the latest news, updates and
                            special offers from us.
                        </p>
                        <div>
                            <input
                                    type="text"
                                    id="lname"
                                    name="lastname"
                                    placeholder="Your email..."
                            />
                            <input type="submit" value="Subscribe now"/>
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
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"
></script>
</body>
</html>