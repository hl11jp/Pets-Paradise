<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
/>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;700&family=Raleway:wght@100&family=Roboto+Mono:wght@300&display=swap"
            rel="stylesheet"
    />
    <link rel="shortcut icon" type="img/png" href="/img/paw-solid.svg" />
    <title>Pet Paradise</title>
</head>
<body>
<header class="header " id="header">
    <div class="container">
        <a href="#" class="logo">
            <!-- <i class="fab fa-atlassian"></i> -->
            <img src="./img/paw-solid.svg" style="height: 40px" />
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
            <a class="active" href="#">HOME </a>
            <a href="#">SERVICES</a>
            <a href="#">SHOWCASE</a>
            <a href="#">BLOG</a>
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
<section class="services animate__animated animate__bounce">
    <h1>Services</h1>
    <p>Lorem ipsum dolor sit fjruv df fjjsandae iste ullam expedita.</p>
    <div class="container">
        <div class="row">
            <div class="col-md">
                <img src="./img/kit.png" />
                <div class="item">
                    <h4>Vaccinate</h4>
                    <p>Ut enim ad minim veniam, quis aboris aliquip commodo.</p>
                </div>
            </div>
            <div class="col-md">
                <img src="./img/plus.png" />
                <div class="item">
                    <h4>Special Care</h4>
                    <p>Ut enim ad minim veniam, quis aboris aliquip commodo.</p>
                </div>
            </div>
            <div class="col-md">
                <img src="./img/support.png" />
                <div class="item">
                    <h4>Support 24/7</h4>
                    <p>Ut enim ad minim veniam, quis aboris aliquip commodo.</p>
                </div>
            </div>
            <div class="col-md">
                <img src="./img/expert.png" />
                <div class="item">
                    <h4>Expert</h4>
                    <p>Ut enim ad minim veniam, quis aboris aliquip commodo.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="welcome ">
    <div class="container">
        <div class="row">
            <div class="col-md">
                <img src="./img/vet2.jpeg" />
            </div>
            <div class="col-md">
                <div class="content">
                    <h1>Welcome to the Pet Paradise's Services</h1>
                    <span>Take care of our pet remotely. </span>
                    <p>
                        Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit
                        aut fugit, sed quia consequuntur magni dolores eos qui ratione
                        voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
                        ipsum quia dolor sit amet...
                    </p>
                    <ul>
                        <li>Pet paradise</li>
                        <li>Pet paradise</li>
                        <li>Pet paradise</li>
                    </ul>
                </div>
                <div class="angle">
                    <button class="button">Read More</button>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="our-team p-5">
    <div class="container">
        <div class="title text-center mb-5">
            <span>Our team</span>
            <h1>Meet Our Experts</h1>
        </div>
        <div class="row expert">
            <div class="col col-12 col-md-6 col-lg-4 mb-3">
                <div class="item">
                    <div class="top">
                        <img src="./img/vet.jpeg" />
                        <div class="social-icon w-100 text-center">
                            <i class="fa-brands fa-facebook-f"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-instagram"></i>
                        </div>
                    </div>
                    <div class="expert-info text-center">
                        <h1>Daniel Jacobs</h1>
                        <span>Expert</span>
                    </div>
                </div>
            </div>

            <div class="col col-12 col-md-6 col-lg-4 mb-3">
                <div class="item">
                    <div class="top">
                        <img class="ramsay" src="/img/vett.jpeg" alt=" " />
                        <div class="social-icon w-100 text-center">
                            <i class="fa-brands fa-facebook-f"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-instagram"></i>
                        </div>
                    </div>
                    <div class="expert-info text-center">
                        <h1>Gordon Dona</h1>
                        <span>Expert</span>
                    </div>
                </div>
            </div>

            <div class="col col-12 col-md-6 col-lg-4">
                <div class="item">
                    <div class="top">
                        <img src="/img/vetdog.jpeg" alt=" " />
                        <div class="social-icon w-100 text-center">
                            <i class="fa-brands fa-facebook-f"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-instagram"></i>
                        </div>
                    </div>
                    <div class="expert-info text-center">
                        <h1>Aid May</h1>
                        <span>Expert</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="testimonials animate__animated animate__backInDown">
    <div class="container">
        <div class="title animation-item-1 wow">
            <span>Testimonials</span>
            <h1>What people say</h1>
        </div>
        <div class="carousel">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active text-center">
                        <div class="image-wrap">
                            <img src="/img/cus1.webp" class="animation-item-2 wow" alt="...">
                        </div>
                        <div class="carousel-caption d-md-block">
                            <div class="top animation-item-3 wow">
                                <i class="fa-solid fa-quote-left"></i>
                                <h1>OMG! I cannot believe. It's Awesome "</h1>
                                    <p>My new site is so much faster and easier to work with than my old site. They are here to help the customers to get their success. Nemo sit eos, quod minus eius illo labore. Pellen tesque libero ut justo, ultrices
                                        in ligula.</p>
                            </div>
                            <div class="bottom animation-item-4 wow">
                                <h1>Johnson william</h1>
                                <p>Customer</p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item text-center">
                        <div class="image-wrap">
                            <img src="/img/cus2.jpeg" class="" alt="...">
                        </div>
                        <div class="carousel-caption d-md-block">
                            <div class="top">
                                <i class="fa-solid fa-quote-left"></i>
                                <h1>OMG! I cannot believe. It's Awesome "</h1>
                                    <p>My new site is so much faster and easier to work with than my old site. They are here to help the customers to get their success. Nemo sit eos, quod minus eius illo labore. Pellen tesque libero ut justo, ultrices
                                        in ligula.</p>
                            </div>
                            <div class="bottom">
                                <h1>Johnson william</h1>
                                <p>Customer</p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item text-center">
                        <div class="image-wrap">
                            <img src="/img/cus3.webp" class="" alt="...">
                        </div>
                        <div class="carousel-caption d-md-block">
                            <div class="top">
                                <i class="fa-solid fa-quote-left"></i>
                                <h1>OMG! I cannot believe. It's Awesome "</h1>
                                    <p>My new site is so much faster and easier to work with than my old site. They are here to help the customers to get their success. Nemo sit eos, quod minus eius illo labore. Pellen tesque libero ut justo, ultrices
                                        in ligula.</p>
                            </div>
                            <div class="bottom">
                                <h1>Johnson william</h1>
                                <p>Customer</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<!-- <footer>
  <div class="container">
    <div class="row">
      <div class="col-sm">
        <div class="item">
          <img src="./img/footer.png" />
          <p>
            Lorem ipsum dolor sit amet, consectetur adihic quibusdam ad
            laborum tempore uscipit, laborum.
          </p>
        </div>
      </div>
      <div class="col-sm">
        <div class="item">
          <h4>Explore</h4>
        </div>
      </div>
      <div class="col-sm">col-sm</div>
      <div class="col-sm">col-sm</div>
    </div>
  </div>
</footer> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
          <script>
          new WOW().init();
          </script> -->

</body>
</html>
