<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="final_real_estate3.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Hello!"></asp:Label><asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Log out" OnClick="Button1_Click" />
</asp:Content>
