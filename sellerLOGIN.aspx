<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerLOGIN.aspx.cs" Inherits="dreamydoodleProject.sellerLOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <style>
        body {
            margin: 0;
            color: #FFB6C1;
            background: url('image/SELLERLOGO.jfif') no-repeat center;
            background-size: cover;
            font: 800 16px/18px 'Open Sans', sans-serif;
        }

        *, :after, :before {
            box-sizing: border-box;
        }

        .clearfix:after, .clearfix:before {
            content: '';
            display: table;
        }

        .clearfix:after {
            clear: both;
            display: block;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .login-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 750px;
            position: relative;
            background: url('image/SELLERLOGO.jfif') no-repeat center;
            box-shadow: 0 15px 18px 0 #aaa, 0 19px 52px 0 rgb(128, 128, 128);
        }

        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(40, 57, 101, .4);
        }

            .login-html .sign-in-htm, .login-html .sign-up-htm {
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                position: absolute;
                transform: rotateY(180deg);
                backface-visibility: hidden;
                transition: all .4s linear;
            }

            .login-html .sign-in, .login-html .sign-up, .login-form .group .check {
                display: none;
            }

            .login-html .tab, .login-form .group .label, .login-form .group .button {
                text-transform: uppercase;
            }

            .login-html .tab {
                font-size: 22px;
                margin-right: 15px;
                padding-bottom: 5px;
                margin: 0 15px 10px 0;
                display: inline-block;
                border-bottom: 2px solid transparent;
            }

            .login-html .sign-in:checked + .tab, .login-html .sign-up:checked + .tab {
                color: #fff;
                border-color: #1161ee;
            }

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

            .login-form .group {
                margin-bottom: 15px;
            }

                .login-form .group .label, .login-form .group .input, .login-form .group .button {
                    width: 100%;
                    color: #fff;
                    display: block;
                }

                .login-form .group .input, .login-form .group .button {
                    border: none;
                    padding: 15px 20px;
                    border-radius: 25px;
                    background: rgba(255, 255, 255, .1);
                }

                .login-form .group input[data-type="password"] {
                    text-security: circle;
                    -webkit-text-security: circle;
                }

                .login-form .group .label {
                    color: #fff;
                    font-size: 12px;
                }

                .login-form .group .button {
                    background: #1161ee;
                }

                .login-form .group label .icon {
                    width: 15px;
                    height: 15px;
                    border-radius: 2px;
                    position: relative;
                    display: inline-block;
                    background: rgba(255, 255, 255);
                }

                    .login-form .group label .icon:before, .login-form .group label .icon:after {
                        content: '';
                        width: 10px;
                        height: 2px;
                        background: #fff;
                        position: absolute;
                        transition: all .2s ease-in-out 0s;
                    }

                    .login-form .group label .icon:before {
                        left: 3px;
                        width: 5px;
                        bottom: 6px;
                        transform: scale(0) rotate(0);
                    }

                    .login-form .group label .icon:after {
                        top: 6px;
                        right: 0;
                        transform: scale(0) rotate(0);
                    }

                .login-form .group .check:checked + label {
                    color: #ffff;
                }

                    .login-form .group .check:checked + label .icon {
                        background: #1161ee;
                    }

                        .login-form .group .check:checked + label .icon:before {
                            transform: scale(1) rotate(45deg);
                        }

                        .login-form .group .check:checked + label .icon:after {
                            transform: scale(1) rotate(-45deg);
                        }

        .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm {
            transform: rotate(0);
        }

        .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
            transform: rotate(0);
        }

        .hr {
            height: 2px;
            margin: 90px 0 50px 0;
            background: rgba(255, 255, 255, .2);
        }

        .foot-lnk {
            text-align: center;
        }
    </style>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="email" class="label">
                                <ion-icon name="mail"></ion-icon>
                                EMAIL ID</label>
                            <asp:TextBox ID="TextBoxlenamilsignin" class="input" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="group">
                            <label for="password" class="label">
                                <ion-icon name="eye-off"></ion-icon>
                                PASSWORD</label>
                            <asp:TextBox ID="TextBoxlpasswordsignin" class="input" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span>Keep me Signed in</label>
                        </div>
                        <div class="group">
                            <%--                    <asp:Button ID="Button1" class="button" runat="server" OnClick="Button2_Click" Text="Sign In" />--%>
                            <%--<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Click Me" />--%>

                            <asp:LinkButton ID="LinkButton2" class="button" runat="server" style="text-align: center;">SIGN IN</asp:LinkButton>

                           <%-- <asp:LinkButton ID="LinkButton1" class="button" runat="server"  style="text-align: center;>SIGN IN</asp:LinkButton>--%>


                            <%--<asp:Button ID="Button1"  runat="server" Text="REGISTER" OnClick="Button2_Click" />--%>

                            <%--<input type="submit" class="button" value="Sign In">--%>
                        </div>
                        <div class="hr"></div>




                        <%--<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>--%>
                    </div>
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="name" class="label">
                                <ion-icon name="person-circle"></ion-icon>
                                NAME</label>
                            <asp:TextBox ID="TextBoxname" class="input" runat="server"></asp:TextBox>

                        </div>
                        
                        <div class="group">
                            <label for="email" class="label">
                                <ion-icon name="mail"></ion-icon>
                                Email ID</label>
                            <asp:TextBox ID="TextBoxemail" class="input" runat="server" TextMode="Email"></asp:TextBox>

                        </div>
                        <div class="group">
                            <label for="mobile1" class="label">
                                <ion-icon name="phone"></ion-icon>
                                PHONE NUMBER 1</label>
                            <asp:TextBox ID="TextBoxphno1" class="input" runat="server" TextMode="Phone"></asp:TextBox>

                        </div>
                        <div class="group">
                            <label for="mobile2" class="label">
                                <ion-icon name="phone"></ion-icon>
                                PHONE NUMBER 2</label>
                            <asp:TextBox ID="TextBoxphno2" class="input" runat="server" TextMode="Phone"></asp:TextBox>

                        </div>
                        <div class="group">
                            <label for="password" class="label">
                                <ion-icon name="eye-off"></ion-icon>
                                PASSWORD</label>
                            <asp:TextBox ID="TextBoxpassword" class="input" runat="server" TextMode="Password"></asp:TextBox>

                        </div>
                        <div class="group">
                            <label for="password" class="label">
                                <ion-icon name="eye-off"></ion-icon>
                                CONFIRM PASSWORD</label>
                            <asp:TextBox ID="TextBoxre_password" class="input" runat="server" TextMode="Password"></asp:TextBox>

                        </div>

                        <div class="group">
                            <label for="shop" class="label">
                                <ion-icon name="phone"></ion-icon>
                                SHOP NAME</label>
                            <asp:TextBox ID="TextBoxSHOP" class="input" runat="server" ></asp:TextBox>

                        </div>

                         <div class="group">
                            <label for="STATE" class="label">
                                <ion-icon name="phone"></ion-icon>
                                STATE</label>
                             <asp:DropDownList ID="DropDownListSTATE" class="input" runat="server" OnSelectedIndexChanged="DropDownListSTATE_SelectedIndexChanged1"></asp:DropDownList>
                            

                        </div>

                        <div class="group">
                            <label for="DISTRICT" class="label">
                                <ion-icon name="phone"></ion-icon>
                                DISTRICT</label>
                             <asp:DropDownList ID="DropDownListDIST" class="input" runat="server"></asp:DropDownList>
                           

                        </div>

                        <div class="group">
                            <label for="place" class="label">
                                <ion-icon name="person-circle"></ion-icon>
                                NATIVE PLACE</label>
                            <asp:TextBox ID="TextBoxplace" class="input" runat="server"></asp:TextBox>

                        </div>

                        <div class="group">
                            <asp:Button ID="Buttonsignup" class="button" runat="server" Text="Sign Up" OnClick="Button1_Click" />

                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <label for="tab-1">
                            Already Member?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
