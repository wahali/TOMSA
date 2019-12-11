<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html  lang="en">
<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <!--		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">-->

    <!-- title of site -->
    <title>Sign up</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        function checkUserExists(){
            $.post({
                url:"CheckUsername.do",
                    data:{"username":$("#username").val()},
                success:function (data,status) {
                if(data ==="true"){
                    document.getElementById("msg").innerHTML = "<font color='red'>用户名已经存在！</font>";
                }else {
                    document.getElementById("msg").innerHTML = "<font color='blue'>用户名可以使用！</font>";
                }

                }
                    });
        }
    </script>

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- signin end -->
<section class="signin signup popup-up">
    <div class="container">

        <div class="sign-content popup-in-content">
            <div class="popup-in-txt">
                <h2>sign up</h2>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-form">
                            <form action="signin.html">
                                <div class="form-col">
                                    <div class="form-group">
                                        <label for="signin_form">real name</label>
                                        <input type="text" class="form-control" id="signin_form" placeholder="real name">
                                    </div><!--/.form-group -->
                                </div><!--/.form-col -->
                                <div class="form-col1">
                                    <div class="form-group">
                                        <label for="signin_form">class number</label>
                                        <input type="text" class="form-control" id="signin_form" placeholder="class number">
                                    </div><!--/.form-group -->
                                </div><!--/.form-col1 -->
                                <br>
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" name = "username" id="username" onblur="checkUserExists()" placeholder="enter your username here">
                                </div><!--/.form-group -->
                                <div id="msg" style="display:inline"></div>
                                <%--<div class="col-sm-3" id = "msg" style="vertical-align: middle;">
                                </div>&lt;%&ndash;ajax确认username的提示信息&ndash;%&gt;--%>
                                <div class="form-group">
                                    <br>
                                    <label for="password">password</label>
                                    <input type="password" class="form-control" id="password" placeholder="Password">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">retype password</label>
                                    <input type="password" class="form-control" id="signin_form" placeholder="Retype Password">
                                </div><!--/.form-group -->
                            </form><!--/form -->
                        </div><!--/.signin-form -->
                    </div><!--/.col -->
                </div><!--/.row -->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-password">
                            <div class="awesome-checkbox-list">
                                <ul class="unstyled centered">

                                    <li>
                                        <input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">
                                        <label for="styled-checkbox-2">accept our terms & condition</label>
                                    </li>

                                    <li></li>

                                </ul>
                            </div><!--/.awesome-checkbox-list -->
                        </div><!--/.signin-password -->
                    </div><!--/.col -->
                </div><!--/.row -->


                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-footer">
                            <button type="button" class="btn signin_btn" name = "signup">
                                sign up
                            </button>
                            <p>
                                already member ?
                                <a href="/">sign in</a>
                            </p>
                        </div><!--/.signin-footer -->
                    </div><!--/.col-->
                </div><!--/.row -->
            </div><!-- .popup-in-txt -->
        </div><!--/.sign-content -->
    </div><!--/.container -->

</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<%--<footer class="footer-copyright">
    <div id="scroll-Top">
        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
    </div><!--/.scroll-Top-->

</footer><!--/.hm-footer-copyright-->--%>
<!--footer copyright  end -->


<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="js/jquery.js"></script>

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<!--bootstrap.min.js-->
<script src="js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="js/bootsnav.js"></script>

<!-- jquery.sticky.js -->
<script src="js/jquery.sticky.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


<!--Custom JS-->
<script src="js/custom.js"></script>

</body>

</html>