<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MvcClassic_practice.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Page Title</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
   <script  src="https://code.jquery.com/jquery-3.7.1.js"></script>
   
</head>   <%-- <style>
        body {
            font-family: sans-serif;
        }

        form {
            width: 300px;
            margin: 0 auto;
        }

        input {
            width: 100%;
            padding: 10px;              
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            width: 30%;
            padding: 10px;
            background-color: #000;
            color: #fff;
            border: none;
            border-radius: 3px;
        }

        .login-link {
            text-align: center;
            margin-top: 10px;
        }

        a {
            color: #000;
        }
    </style>--%> <%--<body style="background-color:#7BD3EA">  <form id= "myform" style="margin-top:100px;">    <h2>Sign Up</h2>    <input type="text"id="Name" name="name" placeholder="Enter Your Name"/>    <input type="email"id="Email" name="email" placeholder="Enter Your Email"/>    <input type="number" id="Mobile" name="Mobile No" placeholder="Enter Your Mobile No"/>    <input type="password" id="Password" name="password" placeholder="Enter Password"/>    <input type="password"id="Conpassword" name="Confirm password" placeholder="Confirm Password"/>    <button type="submit" id="btn-signup" onclick="newbtnSignup_Onclick">Sign Up</button>  </form>  <div class="login-link">    <a href="/login">I already have an account.</a>  </div><script>

</script></body>--%>

   
    <style>
        body {
            background-color: #33FFDA;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #33FFDA;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px; /* Adjust the width as needed */
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            width:50%
        }

        .btn-signup {
            width: 100%;
        }

        #signupForm{
            width: 50%;
        }
        
    </style>

<body>
    <form id="signupForm" runat="server" class="container mt-5">
        <div class="form-group">
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtMobile">Mobile:</label>
            <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtConpassword">Confirm Password:</label>
            <asp:TextBox ID="txtConpassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
      
            <div class="error-message" id="passwordMatchError" style="display: none;">Password and Confirm Password do not match.</div>
       
        </div>
       
        <div style="width:20%">
            <asp:Button ID="btnSignUp" Text="Sign Up" OnClientClick="return validateForm();" OnClick="newbtnSignup_Onclick" CssClass="btn btn-primary btn-signup" runat="server" />
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function validateForm() {
            var username = $("#txtUsername").val();
            var password = $("#txtPassword").val();
            var email = $("#txtEmail").val();
            var mobile = $("txtMobile").val();
            //var password = $().val();
            var conpassword = $("#txtConpassword").val();

            if (username === "" || password === "" || email === "" || mobile === "" || conpassword === "") {
                $('#txtUsername').addClass('border-danger');
                $('#txtPassword').addClass('border-danger');
                $('#txtEmail').addClass('border-danger');
                $('#txtMobile').addClass('border-danger');
                $('#txtConpassword').addClass('border-danger');

                alert("Please fill in all fields.");
                return false;
            }
            else {
                $('#txtUsername').removeClass('border-danger');
                $('#txtPassword').removeClass('border-danger');
                $('#txtEmail').removeClass('border-danger');
                $('#txtMobile').removeClass('border-danger');
                $('#txtConpassword').removeClass('border-danger');

            }

            if (password === conpassword) {
                
                return true;
            }
            else {
                alert("Password and confirmpassword not mached!!!!");
                return false;
            }
            return true;
        }
        
    </script>
</body>
</html>




