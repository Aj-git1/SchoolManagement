<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="SD_School_Bareilly_UP.Homepage" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>
<html>
<head> 


    <title>SDBD Inter College</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    <%-- <script src="homeJS.js"></script>--%>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: hsl(210, 36%, 96%);
            margin: 0;
            padding: 0;
        }

        header {
            background-color: rgb(78, 85, 87);
            color: white;
            padding: 0px;
        }

        .box {
            background-color: rgb(78, 85, 87);
            height: 50px;
            width: 100%;
            display: flex;
            align-items: center;
            padding-top: 0px;
        }

        ul {
            list-style: none;
            display: flex;
            color: whitesmoke;
        }

        .leftSide {
            padding-top: 18px;
            margin-left: 30px;
            margin-bottom: 10px;
        }

        .icon {
            margin-bottom: -3px;
            margin-right: 5px;
            color: white;
        }

        .infoMail {
            margin-right: 25px;
        }

        .rightSide {
            position: absolute;
            right: 100px;
        }

            .rightSide li {
                margin-right: 10px;
                margin-left: 10px;
                margin-bottom: 10px;
            }

        nav {
            display: grid;
            grid-template-columns: auto auto auto;
            /* margin:0px auto 32px auto;*/
        }

        .logo {
            margin-top: 8px;
            margin-left: 34px;
        }

        .homeimg {
            opacity: 0.8;
        }

        .navmid {
            margin-top: 10px;
        }

        #btn {
            float: right;
            /* margin: 1px -4px 7px 34px;*/ /*top right bottom left*/
            font-size: 20px;
            color: white;
            padding: 3px;
            text-decoration: none;
            border-radius: 6px 6px;
            background-color: hsl(205, 63%, 48%);
            border: none;
            padding: 4px 11px;
            display: inline-block;
            margin-top: 10px;
            margin-right: 20px;
            cursor: pointer;
        }



        nav {
            background-color: white;
            padding: 5px;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-between;
        }

        li {
            margin: 0;
            padding: 0;
        }

        a {
            display: block;
            padding: 10px;
            color: #004080;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

            a:hover {
                background-color: #e6f0ff;
            }

        section {
            margin: 20px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .homeimg {
            position: relative;
            display: inline-block;
        }

        #text {
            position: absolute;
            top: 35%;
            left: 35%;
            transform: translate(-50%,-50%);
            color: black;
            font-size: 35px;
            font-weight: bold;
            text-transform: uppercase;
        }

        #Btn2 {
            position: absolute;
            top: 50%;
            left: 8%;
            transform: translate(-50%, -50%);
            padding: 4px 11px;
            background-color: hsl(205, 63%, 48%);
            color: white;
            border-radius: 6px 6px;
            text-decoration: none;
            font-size: 20px;
            border: none;
            cursor: pointer;
        }

        .aboutgrid1 {
            display: grid;
            grid-template-columns: auto auto;
            grid-column-gap: 30px;
        }

        .Aboutcon h1 {
            text-align: center;
        }

        .aboutgrid1 .aboutimg {
            margin-left: 40px;
            box-sizing: border-box;
            margin-top: 20px;
            margin-bottom: 70px;
        }

        .aboutgrid1 .abouttxt {
            margin-top: 70px;
            margin-right: 40px;
        }

        .aboutgrid2 {
            text-align: center;
            display: grid;
            grid-template-columns: auto auto auto;
            grid-column-gap: 15px;
        }

            .aboutgrid2 img {
                text-align: center;
                margin-left: 15px;
                border-radius: 50%;
                box-shadow: 0 0 10px #ccc;
                position: relative;
            }

            .aboutgrid2 h2 {
                margin-top: -2px;
                text-align: center;
                margin-left: 15px;
            }

            .aboutgrid2 p {
                margin-top: -14px;
                text-align: center;
                margin-left: 15px;
            }

        .Vision {
            display: grid;
            grid-template-columns: auto auto;
            grid-column-gap: 20px;
            font-size: 12px;
            margin-bottom: 12px;
        }

        .box1 {
            margin-left: 100px;
            margin-right: 140px;
            border-radius: 15px 15px;
            box-shadow: 5px 5px black, 10px 10px gray, 15px 15px white;
        }

        .box2 {
            margin-right: 140px;
            border-radius: 15px 15px;
            box-shadow: 5px 5px black, 10px 10px gray, 15px 15px white;
        }

        .Vision :hover {
            -ms-transform: scale(1.02);
            -webkit-transform: scale(1.02);
            transform: scale(1.02);
        }

        .achievement {
            background-color: grey;
        }

        .achgrid {
            text-align: center;
            display: grid;
            grid-template-columns: auto auto auto auto;
            font-size: 70px;
            margin: 10px 0px 10px 0px;
        }

            .achgrid p {
                font-size: 20px;
                margin: 18px 4px 4px 4px;
            }

        * {
            box-sizing: border-box
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Hide the images by default */
        .mySlides {
            display: none;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #717171;
            }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }


        .Testimonials {
            display: grid;
            grid-template-columns: auto auto auto;
            grid-column-gap: 0px;
            text-align: center;
        }

        .test {
            width: 250px;
            height: 300px;
            background-color: #ffff;
            border: 1px solid #000;
            padding: 20px;
            margin: 20px;
            margin-left: 90px;
            border: none;
            border-radius: 20px;
        }

            .test img {
                width: 200px;
                height: 100px;
                text-align: center;
                border-radius: 48%;
            }

        .contactcontainer {
            text-align: center;
        }

        .con1 {
            padding: 5px;
        }

        #contactbtn {
            margin-left: 600px;
            /* margin: 1px -4px 7px 34px;*/ /*top right bottom left*/
            font-size: 20px;
            color: white;
            padding: 3px;
            text-decoration: none;
            border-radius: 6px 6px;
            background-color: hsl(205, 63%, 48%);
            border: none;
            padding: 4px 11px;
            display: inline-block;
            cursor: pointer;
        }

        .contact {
            display: grid;
            grid-template-columns: 23% 23% 20%;
            font-size: 20px;
            margin-left: 380px;
        }

        .footnav {
            background-color: lightgray;
            display: grid;
            grid-template-columns: 7% 7% 7%;
            grid-column-gap: 0px;
            font-size: 28px;
            padding: 6px;
            margin-left: 0px;
        }

            .footnav i {
                margin-left: 500px;
                
            }

        footer {
            background-color: rgb(78, 85, 87);
            color: white;
            padding: 1px;
            text-align: center;
        }
    </style>

</head>

<body runat="server">
    <%-- <script src="homeJS.js"></script>--%>

    <form id="form1" runat="server">
        <header>
            <div class="box">
                <ul class='leftSide'>
                    <li class='infoMail'>
                        <p><i class="fa fa-envelope" aria-hidden="true"></i>info@kksvidhyamandir.com</p>
                    </li>
                    <li class='timing'>
                        <p>(8:00 AM to 5:00 PM)</p>
                    </li>
                </ul>
                <ul class='rightSide'>
                </ul>
            </div>
        </header>

        <nav>
          <div class="logo">
                <img src="Images/kkslogo.png" alt="logo" style="width: 60px; height: 45px" />
            </div>

            <div class="ulclass" runat="server">
                <ul class="navmid">
                    <ll><a href="#about">About</a></ll>
                    <ll><a href="#">Gallery</a></ll>
                    <ll><a href="#contact">Contact Us</a></ll>
                </ul>
            </div>
            <div class="btn1">
                <%--<input type="button" value="Admin Login" style="float: right;" onclick="Login_btn" />--%>

                <asp:Button ID="btn" runat="server" Text="Login" CssClass="btn1" OnClick="Login_btn" />
            </div>
        </nav>

        <div class="homeimg">
            <img src="Images/home.jpg" alt="homeimg" style="width: 1260px; height: 600px" />
            <div id="text" runat="server">
                <%--<h1 runat="server"><b>Welcome to Savitri Devi Bhagwan Das Inter College Bareilly,</b></h1>--%>
                <%--<h1><b>'The Great Aim of Education is not Knowledge, But Action...','We Help You to Learn New Things...' </b></h1>--%>
            </div>
            <div class="homeimgBtn" runat="server">
                <asp:Button ID="Btn2" runat="server" Text="Login" CssClass="btn" OnClick="Login_btn" />
            </div>
        </div>

        <script type="text/javascript">
            var i = 0, text;
            text = "Welcome to Savitri Devi Bhagwan Das Inter College Bareilly,"

            function typing() {
                if (i < text.length) {
                    document.getElementById("text").innerHTML += text.charAt(i);
                    i++
                    setTimeout(typing, 50);
                }
            }
            typing();

        </script>
        <%--<section>
            <h2>
                <center>Welcome to School Portal</center>
            </h2>
            <p>This is the homepage for our school portal. You can use the navigation links above to access different sections of the portal.</p>
            <p>Some useful features of our portal:</p>
            <ul>
                <li>View your grades and progress</li>
                <li>Find out about upcoming events and activities</li>
                <li>Connect with other students and teachers</li>
            </ul>
        </section>--%>
        <div class="Aboutcon" runat="server" id="about">
            <h1><b><u>About</u></b></h1>
            <br />
            <div class="aboutgrid1">

                <div class="aboutimg" runat="server">
                    <img src="Images/kkslogo.png" alt="im" style="width: 300px;" />
                </div>
                <div class="abouttxt" runat="server">

                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

                </div>
            </div>

            <div class="col">

            </div>
<%--            <div class="aboutgrid2" runat="server">
                <div class="person1" runat="server">
                    <img src="Images/logo.jpg" style="width: 150px; height: 135px" />
                    <h2>Principal</h2>
                    <p>XYZ</p>
                </div>
                <div class="person2" runat="server">
                    <img src="Images/logo.jpg" style="width: 150px; height: 135px" />
                    <h2>Director</h2>
                    <p>ABC</p>
                </div>
                <div class="person3" runat="server">
                    <img src="Images/logo.jpg" style="width: 150px; height: 135px" />
                    <h2>Manager</h2>
                    <p>UIO</p>
                </div>

            </div>--%>
        </div>
        <br />
        <h1 style="text-align:center;"><b><u>Vision and Mission</u></b></h1>
        <div class="Vision" runat="server">
            <div class="box1" runat="server">
                <h2 style="text-align: center;"><b>Vision</b></h2>
                <p>
                    <br />
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />

            </div>
            <div class="box2" runat="server">
                <h2 style="text-align: center;"><b>Mission</b></h2>
                <p>
                    <br />
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
                <p>
                    <li>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</li>
                </p>
                <br />
            </div>
            <br />
            <br />
            <br />
        </div>
        <center>

            <h1><b><u>Achievements</u></b></h1>
        </center>
        <div class="achievement" runat="server">
            <br />
            <div class="achgrid">
                <div class="achgrid1">
                    <i class="fa fa-hourglass-half" aria-hidden="true"></i>
                    <p>
                        <b>10</b><br />
                        Successfull years
                    </p>
                </div>
                <div class="achgrid2">
                    <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                    <p>
                        <b>3007</b><br />
                        Students enrolled
                    </p>
                </div>
                <div class="achgrid3">
                    <i class="fa fa-users" aria-hidden="true"></i>
                    <p>
                        <b>450</b><br />
                        Happy Parents
                    </p>
                </div>
                <div class="achgrid4">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <p>
                        <b>30</b><br />
                        Qualified teachers
                    </p>

                </div>
            </div>
        </div>

        <div class="Events" runat="server">
            <h1 style="text-align: center;"><b><u>Events</u></b></h1>
            <%-- <<%--div class="eventgrid1">
                 
                <img src="images/event1" />
                <img src="images/event2" />
                <img src="images/event3" />
                <img src="images/event4" />
                <img src="images/event5" />
            </div>--%>

            <!-- Slideshow container -->
            <div class="slideshow-container">

                <!-- Full-width images with number and caption text -->
                <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="Images/event1.jpg" style="height: 450px; width: 1000px;">
                    <div class="text">Caption Text</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 3</div>
                    <img src="Images/event2.jpg" style="height: 450px; width: 1000px;">
                    <div class="text">Caption Two</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 3</div>
                    <img src="Images/event5.jpg" style="height: 450px; width: 1000px;">
                    <div class="text">Caption Three</div>
                </div>

                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            <!-- The dots/circles -->
            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>


        </div>
        <script>
            let slideIndex = 1;
            showSlides(slideIndex);

            // Next/previous controls
            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            // Thumbnail image controls
            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                if (n > slides.length) { slideIndex = 1 }
                if (n < 1) { slideIndex = slides.length }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
        </script>
        <h1 style="text-align: center;"><b><u>Testimonials</u></b></h1>
        <br />
        <div class="Testimonials" runat="server">

            <div class="test" runat="server">
                <img src="Images/logo3.jpg" />
                <h2>Heera Singh</h2>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</p>
            </div>

            <div class="test" runat="server">
                <img src="Images/logo3.jpg" />
                <h2>Jeera Singh</h2>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</p>
            </div>
            <div class="test" runat="server">
                <img src="Images/logo3.jpg" />
                <h2>Kheera Singh</h2>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Deserunt, porro mollitia. Natus molestiae</p>
            </div>

        </div>
        <center>
            <h1><b><u>Contact</u></b></h1>
        </center>
        <div class="contactcontainer" runat="server" id="contact">
            <input type="text" name="Name" placeholder="Name" runat="server" class="con1" style="width: 500px" /><br />
            <br />
            <input type="text" name="Name" placeholder="Email" runat="server" class="con1" style="width: 500px" /><br />
            <br />
            <textarea name="Message" rows="6" placeholder="Your Message" class="con1" style="width: 500px"></textarea>
            <br />
        </div>
        <br />
        <asp:Button ID="contactbtn" runat="server" Text="Send" CssClass="conbtn" />
        <br />
        <br />

        <div class="contact">
            <div class="conphone">

                <p><i class="fa fa-phone" aria-hidden="true"></i>+919411632472</p>
            </div>
            <div class="conenvelop">

                <p><i class="fa fa-envelope" aria-hidden="true"></i>user@gmail.com</p>
            </div>
            <div class="conloc">

                <p><i class="fa fa-map-marker" aria-hidden="true"></i>Bisalpur</p>
            </div>
        </div>
        <div class="footnav">
            <i class="fa-brands fa-square-facebook"></i>
            <i class="fa-brands fa-instagram"></i>
            <i class="fa-brands fa-square-twitter"></i>
        </div>
        
        <footer>

            <div classname="copyright">
                <h6>SDBDIC Copyright © 2022 SDBD Inter College - All rights reserved
                    <br />
                    || Designed & Developed By: 2AHM ||</h6>
            </div>
        </footer>
    </form>
</body>
</html>


