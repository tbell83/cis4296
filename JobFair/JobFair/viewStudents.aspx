<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="viewStudents.aspx.cs" Inherits="JobFair.viewStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="TUID" HeaderText="TUID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="email" HeaderText="E-Mail" />
            <asp:BoundField DataField="GraduationDate" HeaderText="Graduation Date" />
            <asp:BoundField DataField="Lunch" HeaderText="Lunch" />
            <asp:BoundField DataField="Positions" HeaderText="Postions" />
        </Columns>
    </asp:GridView>
</asp:Content>