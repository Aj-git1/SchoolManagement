<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SD_School_Bareilly_UP.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
    
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            margin: 100px auto;
            padding: 20px;
            width: 400px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        input[type="text"],
        input[type="password"] {
            background-color: #f2f2f2;
            border: none;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 16px;
            margin-bottom: 20px;
            padding: 10px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            border: none;
            border-radius: 3px;
            box-shadow: 0 0 5px rgba(0,0,0,0.2);
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            padding: 10px;
            width: 100%;
        }

            input[type="submit"]:hover {
                background-color: #3e8e41;
            }

        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 style="text-align:center;">Admin Login</h2>
        <form id="form1" runat="server">
            <div>
              
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
            
        </form>
    </div>
</body>
</html>
