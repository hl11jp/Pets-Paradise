<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Register</title>
  <link rel="stylesheet" href="./css/register.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link
    href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap"
    rel="stylesheet" />
  <link rel="shortcut icon" type="img/png" href="/img/paw-solid.svg" />
</head>

<body>

  <div class="container">
    <section class="vh-100">
      <div class="mask d-flex align-items-center h-100">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-8">
              <div class="card" style="border-radius: 15px;">
                <div class="card-body pt-4 pb-4">
                  <h2 class="text-uppercase text-center mb-4">Create an account</h2>

                  <form action="MainController" method="POST">

                    <div class="body">

                      <div class="name row mb-4">
                        <div class="col-md-2 d-flex align-items-center">
                          Name
                        </div>
                        <div class="col-md-10">
                          <div class="form-outline">
                            <input type="text" id="form3Example1cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="Name" name="name"/>
                          </div>
                        </div>
                      </div>

                      <div class="username row mb-4">
                        <div class="col-md-2 d-flex align-items-center">
                          Username
                        </div>
                        <div class="col-md-10">
                          <div class="form-outline">
                            <input type="text" id="form3Example1cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="Your Username" name="username"/>
                          </div>
                        </div>
                      </div>

                      <div class="username row mb-4">
                        <div class="col-md-2 d-flex align-items-center">
                          Email
                        </div>
                        <div class="col-md-10">
                          <div class="form-outline">
                            <input type="email" id="form3Example3cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="Your Email" name="email"/>
                          </div>
                        </div>
                      </div>

                      <div class="username row mb-4">
                        <div class="col-md-2 d-flex align-items-center">
                          Phone
                        </div>
                        <div class="col-md-10">
                          <div class="form-outline">
                            <input type="text" id="form3Example3cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="Phone number" name="phoneNumber"/>
                          </div>
                        </div>
                      </div>

                      <div class="username row mb-4">
                        <div class="col-md-2"></div>
                        <div class="col-md-5">
                          <div class="mb-1">Password</div>
                          <div class="form-outline">
                            <input type="password" id="form3Example4cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="*****" name="password"/>
                          </div>
                        </div>
                        <div class="col-md-5">
                          <div class="mb-1">Repeat password</div>
                          <div class="form-outline">
                            <input type="password" id="form3Example4cg" required=""
                              class="custom-box form-control form-control-lg pt-1" placeholder="*****" name="confirmed"/>
                          </div>
                        </div>
                      </div>

                      <div class="form-check d-flex  mb-4">
                        <input class="form-check-input me-2" type="checkbox" required="" value=""
                          id="form2Example3cg" />
                        <label class="form-check-label" for="form2Example3g">
                          I agree all statements in <a href="#!" class="link-danger">Terms of service</a>
                        </label>
                      </div>

                      <div class="re-button d-flex justify-content-center">
                        <button class="button" type="submit" name="action" value="Signup">Sign up</button>
                      </div>

                      <p class="text-center text-muted mt-3 mb-0">Have already an account? <a href="./login.jsp"
                          class="link-danger">Login here</a></p>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

</body>

</html>