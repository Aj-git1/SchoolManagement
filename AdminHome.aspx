<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SD_School_Bareilly_UP.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Web Form</title>
    <style type="text/css">
        /* Style for the header */
        .header {
            background-color: rgb(78, 85, 87);
            color: white;
            padding: 18px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: -15px -8px 30px -8px;
        }

        nav {
            display: grid;
            grid-template-columns: auto auto auto;
            /* margin:0px auto 32px auto;*/
            background-color:lightgray;
        }

        
        .logo {
            margin-top: 8px;
            margin-left: 34px;
        }


        /* Style for the school name */
        .school-name {
            font-size: 24px;
            font-weight: bold;
        }

        /* Style for the logout button */
        .logout-button {
            background-color: #ddd;
            float: right;
            border: none;
            padding: 5px 10px;
            font-size: 16px;
            cursor: pointer;
            background-color: #6e6d86;
            border-radius: 8px;
        }

        nav {
            background-color: lightgray;
            margin: -39.9px -8px 0px -8px;
        }

        .buttons-row {
            width: 220px;
            background-color: lightgray;
            position: fixed;
            height: 100%;
            overflow: auto;
            margin-top: 0.7px;
            margin-left: -7px;
            margin-bottom: 0px;
            border: 1px solid rgb(78, 85, 87);
        }

        .btn_student {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #333;
            font-size: 26px;
            margin-left: 10px;
            margin-top:12px;
            background-color:lightgray;
            border:none;
            cursor: pointer;
        }
        .btn_teacher {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #333;
            font-size: 26px;
            margin-left: 10px;
            margin-top:12px;
            width:136px;
            background-color:lightgray;
            border:none;
            cursor: pointer;
        }
        .btn_class {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #333;
            font-size: 26px;
            margin-left: -9px;
            margin-top:12px;
            width:136px;
            background-color:lightgray;
            border:none;
            cursor: pointer;
        }

        /*.sidenav {
            width: 200px;
            background-color: lightgray;
            position: fixed;
            height: 100%;
            overflow: auto;
            margin-top: 0.7px;
            margin-left: -7px;
            margin-bottom: 0px;
            border: 1px solid rgb(78, 85, 87);
        }

            .sidenav li {
                border-bottom: 1px solid #ddd;
                text-decoration: none;
                list-style: none;
            }

            .sidenav a {
                display: block;
                padding: 10px 15px;
                text-decoration: none;
                color: #333;
                font-size: 26px;
                margin-left: -42px;
            }*/

         /*  .buttons-row a:hover {
                    background-color: rgb(78, 85, 87);
                    transition: transform 0.5s ease;
           }*/

        .textimg {
            display: grid;
            grid-template-columns: 60% 30%;
            grid-column-gap: 50px;
        }

        .text {
            margin-top: 45px;
            margin-left: 280px;
        }

        .image {
            margin-right: -70px;
            margin-top: 70px;
        }
    </style>
</head>
<body runat="server">
    <form id="form1" runat="server">
        <!-- Header section -->
        <div class="header">
            <div class="school-name">Savitri Devi Bhagwan Das Inter College</div>
            <asp:Button ID="LogoutButton" runat="server" Text="Logout" CssClass="logout-button" OnClick="Logout_Btn" />
        </div>
         <nav>

                <div class="logo">
                    <img src="Images/kkslogo.png" alt="logo" style="width: 60px; height: 45px" />
                </div>

                <div class="ulclass" runat="server">
                    <%--<ul class="navmid">
                        <ll><a href="#about">About</a></ll>
                        <ll><a href="#">Gallery</a></ll>
                        <ll><a href="#contact">Contact Us</a></ll>
                    </ul>--%>
                </div>
                <div class="btn1">
                    <%--<input type="button" value="Admin Login" style="float: right;" onclick="Login_btn" />--%>

                   <%--  <asp:Button ID="LogoutButton3" runat="server" Text="Logout" CssClass="logout-button" OnClick="Logout_Btn3" />--%>
                </div>
            </nav>

        <!-- Buttons section -->

        <div class="buttons-row" runat="server">
            
            <asp:Button ID="Button1" runat="server" Text="Teachers" CssClass="btn_teacher" OnClick="Teacherdetails_btn" />
            <asp:Button ID="Button2" runat="server" Text="Students" CssClass="btn_student" OnClick="Studentdetails_btn" />
            <asp:Button ID="Button3" runat="server" Text="Class" CssClass="btn_class" OnClick="Classesdetails_btn" />
        </div>
        <%--<ul class="sidenav" runat="server">
            <li><a href="#"></a></li>
            <li><a href="#" runat="server" onclick="Student"></>Students</a></li>
            <li><a href="#" runat="server" onclick="teacher"></>Teachers</a></li>
            <li><a href="#" runat="server" onclick="class"></>Class</a></li>
        </ul>--%>


        <div class="textimg">
            <div class="text">
                <p style="font-size: 35px;"><b>Welcome Admin</b></p>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
            <div class="image">
                <img src="Images/kkslogo.png" width="72%" height="80%" />
            </div>
        </div>
        <%--<footer>
        <p>&copy; 2023 School Portal</p>
    </footer>--%>
    </form>
</body>
</html>

