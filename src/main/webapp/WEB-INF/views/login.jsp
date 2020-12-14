<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Log In</title>
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--Bootstrap 4.3.1-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">


</head>

<body>
        <header>

                <nav class="navbar navbar-expand-sm navbar-light bg-light" id="header">
                    <a class="navbar-brand" href="index.html">HQN Store</a>
                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                        data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="product.html" id="dropdownId" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">Feng Shui</a>
                                <div class="dropdown-menu" aria-labelledby="dropdownId">
                                    <a class="dropdown-item" href="normal.html">Normal</a>
                                    <a class="dropdown-item" href="vip.html">VIP</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="stores.html">Store</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search" id="search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="searchProduct()"><i
                                    class="fa fa-search"></i></button>
                        </form>
						<button type="button" class="btn btn-primary" style="margin-left:20px">
				  Cart <span class="badge badge-light">0</span>
				</button>
                        <span><a href="" > Sign In <i class="fa fa-sign-in-alt"></i></a></span>
                    </div>
                </nav>
        
            </header>
    <section>
        <div class="container" id="cont-loginform">
            <div class="card  w-50" id="cardForm">
                <div class="card-header">
                    <h3>SIGN IN</h3>
                </div>
                <div class="card-body">
                    <form onsubmit="return validateForm()">
                        <h5 class="card-title">Username</h5>
                        <input type="text" class="form-control" placeholder="Username" id="username">
                        <h5 class="card-title">Password</h5>
                        <input type="password" class="form-control" placeholder="Password" id="password"> <br>
                        <input type="submit" class="btn btn-primary form-control" value="Submit"/>
                    </form>
                    <br>
                    <div class="card-text"><a href="/phongthuy/dangky">Don't have account ? Register here</a></div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="container-fluid" id="contfluid">
            <div class="row">
                <div class="col-md-3">
                    <h4>Categories</h4>
                    <p><a href="about.html">About</a></p>
                    <p><a href="normal.html">Normal</a></p>
                    <p><a href="vip.html">VIP</a></p>
                    <p><a href="contact.html">Contact</a></p>
                </div>
                <div class="col-md-3">
                    <h4>Help</h4>
                    <p><a href="contact.html">Track Order</a></p>
                    <p><a href="contact.html">Return</a></p>
                    <p><a href="contact.html">Shipping</a></p>
                    <p><a href="contact.html">FAQs</a></p>
                </div>
                <div class="col-md-3">
                    <h4>Get in touch</h4>
                    <p>Any question ? Let us know at Store 12 Nguyen Van Bao</p>
                    <p><a href="contact.html"><i class="fab fa-facebook-square fa-2x"></i></a> <a href="contact.html"><i
                                class="fab fa-instagram fa-2x"></i></a> <a href="contact.html"><i
                                class="fab fa-twitter fa-2x"></i></a> </p>
                </div>
                <div class="col-md-3">
                    <h4>NewsLetter</h4>
                    <form>
                        <input type="email" placeholder="email@example.com" id="emailSub" /><br>
                        <input type="submit" value="Subcribe" class="btn btn-primary" id="btnSub" />
                    </form>

                </div>
            </div>
        </div>
    </footer>
    <!--JQuery for Bootstrap-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="js/login.js"></script>    
</body>

</html>