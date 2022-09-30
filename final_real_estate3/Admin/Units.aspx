<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Units.aspx.cs" Inherits="final_real_estate3.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AddUnit.aspx">Add Unit</asp:HyperLink> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/Home.aspx">Back</asp:HyperLink>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:real_estateConnectionString %>" SelectCommand="SELECT * FROM [units]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="total_price_contract" HeaderText="Total Price Contract" SortExpression="total_price_contract" />
            <asp:BoundField DataField="reservation_fee" HeaderText="Reservation Fee" SortExpression="reservation_fee" />
            <asp:BoundField DataField="net_equity" HeaderText="Net Equity" SortExpression="net_equity" />
            <asp:BoundField DataField="option_equity" HeaderText="Option Equity" SortExpression="option_equity" />
            <asp:BoundField DataField="bank_financing" HeaderText="Bank Financing" SortExpression="bank_financing" />
            <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" />
            <asp:BoundField DataField="date_time_created" HeaderText="Date Time Created" SortExpression="date_time_created" />
            
        </Columns>
    </asp:GridView>
    
</asp:Content>
