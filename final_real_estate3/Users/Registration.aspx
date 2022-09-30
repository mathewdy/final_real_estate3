<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Login.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="final_real_estate3.Users.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Registration</h1>
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    <br />
    <asp:TextBox ID="first_name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Middle Name"></asp:Label>
    <br />
    <asp:TextBox ID="middle_name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
    <br />
    <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Residence Address"></asp:Label>
    <br />
    <asp:TextBox ID="residence_address" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Permanent Address"></asp:Label>
    <br />
    <asp:TextBox ID="permanent_address" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Provincial Address"></asp:Label>
    <br />
    <asp:TextBox ID="provincial_address" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Birthdate"></asp:Label>
    <br />
    <asp:TextBox ID="birthdate" runat="server" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>
    <br />
    <asp:TextBox ID="age" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Civil Status"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
        <asp:ListItem>-Select-</asp:ListItem>
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorced</asp:ListItem>
        <asp:ListItem>Widowed</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Citizenship"></asp:Label>
    <br />
    <asp:TextBox ID="citizenship" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Name of Spouse"></asp:Label>
    <br />
    <asp:TextBox ID="name_of_spouse" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label12" runat="server" Text="Name of Father"></asp:Label>
    <br />
    <asp:TextBox ID="name_of_father" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Name of Mother"></asp:Label>
    <br />
    <asp:TextBox ID="name_of_mother" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label14" runat="server" Text="Number of Dependents"></asp:Label>
    <br />
    <asp:TextBox ID="number_of_dependents" runat="server"></asp:TextBox>   
    <br />
    <asp:RadioButton ID="RadioOwned" runat="server" Text="Owned" GroupName="own" /><asp:RadioButton ID="RadioRented" runat="server" Text="Rented" GroupName="own" />
    <br />
    <asp:Label ID="Label16" runat="server" Text="Contact Number"></asp:Label>
    <br />
    <asp:TextBox ID="contact_number" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label17" runat="server" Text="Gender"></asp:Label>
    <br />
    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" /><asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
    <br />
    <asp:Label ID="Label18" runat="server" Text="Nature of Work"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
        <asp:ListItem>-Select-</asp:ListItem>
        <asp:ListItem>Employed Individual</asp:ListItem>
        <asp:ListItem>Contract Worker</asp:ListItem>
        <asp:ListItem>Self-Employed</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label19" runat="server" Text="Name of Employer / Business"></asp:Label>
    <br />
    <asp:TextBox ID="name_of_employer_business" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label20" runat="server" Text="Work Address"></asp:Label>
    <br />
    <asp:TextBox ID="work_address" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label21" runat="server" Text="Telephone"></asp:Label>
    <br />
    <asp:TextBox ID="telephone" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label22" runat="server" Text="Position in Company"></asp:Label>
    <br />
    <asp:TextBox ID="position_in_company" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label23" runat="server" Text="Salary Per Month"></asp:Label>
    <br />
    <asp:TextBox ID="salary_per_month" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label24" runat="server" Text="Other Regular Alowance"></asp:Label>
    <br />
    <asp:TextBox ID="other_regular_allowance" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label25" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="email" runat="server"></asp:TextBox>   
    <br />
    <asp:Label ID="Label26" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="password" runat="server"></asp:TextBox>   
    <br />

    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    <br />

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Users/Login.aspx">Already User? Login</asp:HyperLink>
</asp:Content>
