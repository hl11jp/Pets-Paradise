<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet's Paradise</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/contact.css">
</head>

<body>
    <header id="header" class="header  animate__animated animate__bounceInDown">
        <div class="container d-flex justify-content-between align-items-center my-5">
            <h1 class="fw-bold" style="font-size:40px ;">Pet's Paradise</h1>
            <div class="nav-search-bar  d-flex justify-content-end align-items-center ms-3 w-50">

                <nav class="nav ms-3">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton2"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-bars fs-3"></i> </button>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                            <li><a class="dropdown-item " href="index.html">HOME</a></li>
                            <li><a class="dropdown-item" href="./services.html">SERVICES</a></li>
                            <li><a class="dropdown-item" href="blog.html">BLOG</a></li>
                            <li><a class="dropdown-item" href="shopping.html">SHOPPING</a></li>
                            <li><a class="dropdown-item active" href="/pages/contact.html" style="background-color: #68A7AD;">CONTACT</a></li>
                        </ul>
                    </div>
                </nav>

            </div>
        </div>
    </header>

    <section class="banner contact-banner wow  d-flex ">
        <div class="title container">
			<div class="h-100 w-100 d-flex justify-content-center align-items-center">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
				  <li class="breadcrumb-item"><a href="index.html" style="text-decoration:none ;color:black">Home</a></li>
				  <li class="breadcrumb-item active" aria-current="page">Contact</li>
				</ol>
			  </nav>
        </div>
	</div>

        <div class="color-overlay h-100 w-100"></div>
    </section>

    <section class="contact-us">
        <div class="container">
            <div class="title text-center">
                <span>Get in touch
                </span>
                <h1>Contact Us
                </h1>
                <p>Start working with Us that can provide everything you need to generate awareness, drive traffic,
                    connect.<br> We guarantee that you???ll be able to have any issue resolved within 24 hours.</p>
            </div>
            <div class="form">
                <form class="row g-3">
                    <!-- <div class="col-md-4">
                        <input type="text" class="form-control" id="inputName" placeholder="Name">
                    </div>
                    <div class="col-md-4">
                        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="inputSubject" placeholder="Subject">
                    </div>
                    <div class="col-12">
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Subject" id="messageTextArea"
                                style="height: 10rem"></textarea>
                            <label for="messageTextArea">Message</label>

                        </div>
                    </div> -->

                    <div class="col-12 text-end">
                        <button type="submit" class="btn btn-primary">
                            <a href="mailto:PetCenter@gmail" style="text-decoration: none;color: black;">Get in touch</a>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <section class="additional-info my-5">
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
                                <a href="mailto:">dinner@mail.com</a>
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
                </div>
                <div class="right col-lg-8">
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
                        <img src="./img/footer.png" />
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
                                <i class="fa-solid fa-paw"></i>About
                            </li>
                            <li><i class="fa-solid fa-paw"></i>
                                Service</li>
                            <li><i class="fa-solid fa-paw"></i>
                                More</li>
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
                                Reporting</li>
                            <li><i class="fa-solid fa-paw"></i>
                                FAQ</li>
                            <li><i class="fa-solid fa-paw"></i>
                                Support</li>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js "></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"
       ></script>
    <script>
        new WOW().init();
    </script>
</body>

</html>