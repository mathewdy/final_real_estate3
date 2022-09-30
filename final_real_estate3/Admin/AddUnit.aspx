<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddUnit.aspx.cs" Inherits="final_real_estate3.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Unit</h1>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Units.aspx">Back</asp:HyperLink>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Model"></asp:Label>
    <br />
    <asp:TextBox ID="model" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
    <br />
    <asp:TextBox ID="type" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Total Price Contract"></asp:Label>
    <br />
    <asp:TextBox ID="total_price_contract" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Reservation Fee"></asp:Label>
    <br />
    <asp:TextBox ID="reservation_fee" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Net Equity"></asp:Label>
    <br />
    <asp:TextBox ID="net_equity" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Option Equity"></asp:Label>
    <br />
    <asp:TextBox ID="option_equity" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Bank Financing"></asp:Label>
    <br />
    <asp:TextBox ID="bank_financing" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Image"></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server"  />
    <br />
  
    <asp:Button ID="Button1" runat="server" Text="Create Unit" OnClick="Button1_Click" />
</asp:Content>
