<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget password</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;500&family=Raleway:wght@100;500&family=Roboto+Mono:wght@300&display=swap" rel="stylesheet"/>
    <link rel="shortcut icon" type="img/png" href="/img/paw-solid.svg" />
    <link rel="stylesheet" href="./css/fgps.css">
</head>
<body>
    <body>
        <div class="container">
            <section class="vh-100">
              <div class="mask d-flex align-items-center h-100">
                <div class="container h-100">
                  <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                      <div class="card" style="border-radius: 15px">
                        <div class="card-body p-4">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x "></i></h3>
                            <h2 class="mb-1">Forgot Password?</h2>
                            <p>Enter your username to reset your password.</p>
                        </div>
                          <form action="MainController" method="POST">
                            <div class="form-outline mb-4">
                                <label class="form-label" for="form3Example4" 
                                >Your Username
                              </label>
                              
                              <div class="input-group">
                                <span class="input-group-text" id="basic-addon1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor">
                                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" ></path>
                                    </svg>
                                </span>
                                <input id="text" name="username" placeholder="username" aria-label="Input username" class="form-control"  type="text" required="" aria-describedby="basic-addon1">
                              </div>
                              <div class="text-center text-lg-start mt-3 pt-2">
                                <button class="button" type="submit" name="action" value="ResetPassword">Reset my password</button>
                              </div>
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