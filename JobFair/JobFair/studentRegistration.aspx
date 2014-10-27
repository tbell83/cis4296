<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="studentRegistration.aspx.cs" Inherits="JobFair.studentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="register" runat="server">
        <asp:Label ID="lblFirstName" runat="server" text="First Name:" CssClass="Label"/><asp:TextBox ID="txtFirstName" runat="server" CssClass="Textbox"/><br />
        <asp:Label ID="lblLastName" runat="server" text="Last Name:" CssClass="Label"/><asp:TextBox ID="txtLastName" runat="server" CssClass="Textbox"/><br />
        <asp:Label ID="lblEMail" runat="server" text="EMail Address:" CssClass="Label"/><asp:TextBox ID="txtEMail" runat="server" CssClass="Textbox"/><br />
        <asp:Label ID="lblTUID" runat="server" text="TU-ID:" CssClass="Label"/><asp:TextBox ID="txtTUID" runat="server" CssClass="Textbox"/><br />
        <asp:CheckBox ID="chkLunch" runat="server" CssClass="Control" Text="Attending Lunch" /><br />
        <div id="Position" runat="server">
           <asp:CheckBoxList ID="cblPosition" runat="server">
                <asp:ListItem Text="Full Time Summer Internship" />
                <asp:ListItem Text="Paid Full Time Internship" />
                <asp:ListItem Text="Paid Part Time Internship" />
                <asp:ListItem Text="Permanent Full Time Job" />
                <asp:ListItem Text="Permanent Part Time Job" />
                <asp:ListItem Text="Temporary Full Time Job" />
                <asp:ListItem Text="Temporary Part Time Job" />
                <asp:ListItem Text="Volunteer" />
            </asp:CheckBoxList>
        </div>
        <asp:Label ID="lblGraduationDate" runat="server" Text="Graduation Date:" />
        <asp:DropDownList ID="ddlGradutation" runat="server">
            <asp:ListItem Text="Fall 2014" />
            <asp:ListItem Text="Spring 2015" />
            <asp:ListItem Text="Fall 2015" />
            <asp:ListItem Text="Spring 2016" />
            <asp:ListItem Text="Fall 2016" />
            <asp:ListItem Text="Spring 2017" />
        </asp:DropDownList>
        <asp:Button ID="btnSubmit" runat="server" text="Submit" OnClick="btnSubmit_Click" CssClass="Button"/>
    </div>
    <div id="registrationComplete" runat="server" visible="false">
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="Button"/>
    </div>
    <div id="output" runat="server" visible="false">
        <asp:Label ID="lblOutput" runat="server" />
    </div>
</asp:Content>