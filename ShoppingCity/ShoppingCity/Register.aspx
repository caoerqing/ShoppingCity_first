﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingCity.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hi Go用户注册</title>
    <link rel="Shortcut Icon" href="ico/Hi_Go.ico" />
    <link rel="Bookmark" href="ico/Hi_Go.ico" />
    <style>
        body {
                /*background-image: linear-gradient(120deg,#3498db,#8e44ad);*/
                background-image: url('../images/login_back.jpg');
                background-repeat: no-repeat;
                background-size:cover;
                background-position:center 0;
             }
        .auto-style1 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="position:relative; left:30%; top:100px;">
            <tr>
                <td>【添加会员】<br />
                    ----------------------------------------------------------------------------</td>
            </tr>
            <tr>
                <td>用户名：<asp:TextBox ID="txtuName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>密码：<asp:TextBox ID="txtuPwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>姓名：<asp:TextBox ID="txtuRealName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>性别:
                    <asp:RadioButtonList ID="rbluSex" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    年龄：<asp:TextBox ID="txtuAge" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>爱好：<asp:CheckBoxList ID="cbluHobby" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>看书</asp:ListItem>
                    <asp:ListItem>上网</asp:ListItem>
                    <asp:ListItem>音乐</asp:ListItem>
                    <asp:ListItem>打球</asp:ListItem>
                    <asp:ListItem>跑步</asp:ListItem>
                    <asp:ListItem>游泳</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">邮箱：<asp:TextBox ID="txtuEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqtxtuEmail" runat="server" ControlToValidate="txtuEmail" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtuEmail" ErrorMessage="请输入正确的电子邮件" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>QQ：<asp:TextBox ID="txtuQQ" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>手机：<asp:TextBox ID="txtuPhone" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuPhone" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuPhone" Display="Dynamic" ErrorMessage="请输入正确的手机号码" ForeColor="Red" ValidationExpression="(\(\d{3}\)|\d{3})?\d{8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>头像：<asp:DropDownList ID="ddluImage" runat="server" OnSelectedIndexChanged="ddluImage_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>1.gif</asp:ListItem>
                    <asp:ListItem>2.gif</asp:ListItem>
                    <asp:ListItem>3.gif</asp:ListItem>
                    <asp:ListItem>4.gif</asp:ListItem>
                    <asp:ListItem>5.gif</asp:ListItem>
                    <asp:ListItem>6.gif</asp:ListItem>
                    <asp:ListItem>7.gif</asp:ListItem>
                    <asp:ListItem>8.gif</asp:ListItem>
                    <asp:ListItem>9.gif</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Image ID="imguImage" runat="server" ImageUrl="~/Images/userico/1.gif"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
