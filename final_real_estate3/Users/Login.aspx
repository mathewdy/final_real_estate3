<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="final_real_estate3.Users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Log in User"></asp:Label>
    <br />
    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="91px" />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Users/Registration.aspx">Create New Account</asp:HyperLink>
</asp:Content>
