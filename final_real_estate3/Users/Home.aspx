<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Login.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="final_real_estate3.Users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Hello!"></asp:Label>
    <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />

</asp:Content>
