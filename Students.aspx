﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="SD_School_Bareilly_UP.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Master</title>
    <style>
        /*body {
            font-family: Arial, sans-serif;
            background-color: hsl(210, 36%, 96%);
            margin: 0;
            padding: 0;
        }

        nav {
            display: grid;
            grid-template-columns: auto auto auto;*/
            /* margin:0px auto 32px auto;*/
            /*background-color: lightgray;
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

         .leftSide {
            padding-top: 0px;
            margin-left: 0px;
            margin-bottom: 10px;
        }*/

       /* .stdcontain {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            margin: 20px auto;
            padding: 20px;
            width: 800px;
        }*/

      /*  #dropdown {
            width: 175px;
            padding: 3px;
        }

        input[type=button] {
            margin-left: 40px;
            background-color: forestgreen;
            color: white;
            font-size: 15px;
        }*/
      
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
            padding-top: 0px;
            margin-left: 0px;
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
            background-color:lightgray;
        }

        #LogoutButton3 {
            background-color:hsl(210, 36%, 96%);
            float: right;
            border: none;
            padding: 5px 13px;
            font-size: 16px;
            cursor: pointer;
            background-color: #6e6d86;
            border-radius: 8px;
            margin-right:30px;
            margin-top:12px;

        }
        .logo {
            margin-top: 8px;
            margin-left: 34px;
        }

        .studentscontain {
         
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            margin: 20px auto;
            padding: 20px;
            width: 550px;
        }

        input[type=text] {
            width:80%;
            padding: 7px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btncon{
            display:grid;
            grid-template-columns:auto auto;
            grid-column-gap:0px;
        }
        #btnSave {
            width:150px;
            margin-left: 1px;
            margin-right:40px;
            background-color: forestgreen;
            color: white;
            font-size: 15px;
            padding:4px;
        }

        #btnInsert {
            width:150px;
            margin-right: 18px;
            background-color: forestgreen;
            color: white;
            font-size: 15px;
            padding:4px;
        }

        .gridview {
            background-color: lightgray;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            margin: 20px auto;
            padding: 20px;
            width: 500px;
        
        }
        #grdExistingData{
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            margin: 20px auto;
            padding: 20px;
            width: 500px;
        }
    </style>
</head>
<body runat="server">
    <%--<div class="stdcontain" runat="server">
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
                    <%--<ul class="navmid">
                        <ll><a href="#about">About</a></ll>
                        <ll><a href="#">Gallery</a></ll>
                        <ll><a href="#contact">Contact Us</a></ll>
                    </ul>--%>
               <%-- </div>
                <div class="btn1">--%>
                    <%--<input type="button" value="Admin Login" style="float: right;" onclick="Login_btn" />--%>

                    <%-- <asp:Button ID="LogoutButton2" runat="server" Text="Logout" CssClass="logout-button" OnClick="Logout_Btn2" />--%>
              <%--  </div>


            </nav>
            <h1>Savitri Devi Bhagwan Das Inter College Bareilly</h1>

            <label for="Name">Name:</label>
            <input type="text" name="Name" runat="server" />
            <br />
            <br />
            <div class="dropdown" runat="server">
                <label for="Class">Class:</label>
                <select id="dropdown" name="dropdown" runat="server">
                    <option value="opt0">Select Class</option>
                    <option value="opt1">1st</option>
                    <option value="opt2">2nd</option>
                    <option value="opt3">3rd</option>
                    <option value="opt4">4th</option>
                    <option value="opt5">5th</option>
                </select><br />
                <br />
            </div>
            <input type="button" value="Save" runat="server" onclick="Savebtn_students" />
            <div class="grid" runat="server">
                 
            </div>--%>

     <%--   </form>
    </div>--%>


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
                    <%--<ul class="navmid">
                        <ll><a href="#about">About</a></ll>
                        <ll><a href="#">Gallery</a></ll>
                        <ll><a href="#contact">Contact Us</a></ll>
                    </ul>--%>
                </div>
                <div class="btn1">
                    <%--<input type="button" value="Admin Login" style="float: right;" onclick="Login_btn" />--%>

                     <asp:Button ID="LogoutButton3" runat="server" Text="Logout" CssClass="logout-button" OnClick="Logout_Btn3" />
                </div>


            </nav>
           <div class="studentscontain" runat="server">
            
            <h1>Savitri Devi Bhagwan Das Inter College Bareilly</h1>

            <label for="studentName">Student Name:</label><br />
            <asp:TextBox type="text" ID="Name" name="Name" runat="server"></asp:TextBox>
            <br />
            <br />

          

            <label for="Class">Class:</label><br />
            <asp:TextBox type="text" ID="Class" name="Class" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="btncon" runat="server">
            <asp:Button runat="server" ID="btnSave" Text="Show Details" OnClick="btnSave_Click"></asp:Button>
            
            <asp:Button runat="server" ID="btnInsert" Text="Save" OnClick="btnInsert_Click"></asp:Button>
            </div>
            <%--  <asp:Button runat="server" ID="btnShowDetails" Text="Show Details" OnClick="btnShowDetails_Click"></asp:Button>--%>
            <br />
            <div class="gridview" runat="server">
            <center><h2><b>Students Details</b></h2></center>
            <asp:GridView ID="grdExistingData" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="grdExistingData_SelectedIndexChanged" OnRowDeleting="grdExistingData_RowDeleting">
               
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="grdlblstName" runat="server" Text='<%# Eval("Name") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="grdlblId" runat="server" Text='<%# Eval("Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Class">
                        <ItemTemplate>
                            <asp:Label ID="grdlblclass" runat="server" Text='<%# Eval("Class") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            </div>

      </div>
 </form>
</body>
</html>
