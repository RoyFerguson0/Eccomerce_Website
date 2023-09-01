<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="projAssignment.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleJobs.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style272 {
            margin-top: 21px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">

        <div class="contentTitle">
            Apply For Position(s)
        </div>
        <div class="tabIN">
            <p>
                Please Fill in <b style="color:red;">All</b> details below if you are interested in working for 
                JFR Electrical Equipment.
            </p>
        
        <div class="jobDetails">
            <p>
                First Name:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtForename" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="revForename" runat="server" ControlToValidate="txtForename" ErrorMessage="Cannot Enter Numbers or Special Characters?" Font-Bold="True" ForeColor="#FF9900" ValidationExpression="([a-z]|[A-Z]){1,30}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfForename" runat="server" ControlToValidate="txtForename" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                Last Name:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="revSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="Cannot Enter Numbers or Special Characters?" Font-Bold="True" ForeColor="#FF9900" ValidationExpression="([a-z]|[A-Z]){1,30}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                Email:
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" Font-Bold="True" Font-Size="Medium" ForeColor="#FF9900" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p style="margin-bottom:4px; padding-bottom:0px; border-bottom:0px;">
                Born:
                <asp:TextBox ID="txtDOB" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Invalid Date" Font-Bold="True" ForeColor="#FF9900" ValidationExpression="^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Must Not Be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                </p>
            <div style="font-family:Arial">
    Year :
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style274" Height="17px" Width="105px">
    </asp:DropDownList>&nbsp;
    Month:
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" CssClass="auto-style275" Height="17px" Width="97px">
    </asp:DropDownList>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style273" Height="164px" Width="340px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
</div>
            <p style="margin-bottom:4px; padding-bottom:0px; border-bottom:0px;">
                Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfGender" runat="server" ControlToValidate="rblGender" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
            <asp:RadioButtonList ID="rblGender" style="margin-left:5%;" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblGender_SelectedIndexChanged">
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem Value="3">Other</asp:ListItem>
                </asp:RadioButtonList>
            <asp:Image ID="imgGender" runat="server" CssClass="auto-style271" Height="111px" ImageUrl="~/images/genderOption.jpeg" Width="150px"/>
&nbsp;&nbsp;&nbsp;
            <p>
                Phone Number:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Phone Number" Font-Bold="True" ForeColor="#FF9900" ValidationExpression="^(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}$"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                Postcode:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="revPostcode" runat="server" ErrorMessage="Invalid Postcode" ValidationExpression="[A-Z][A-Z]\d{1,2}\s\d{1}[A-Z][A-Z]" ControlToValidate="txtPostcode" Font-Bold="True" ForeColor="#FF9900"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfPostcode" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Must Not be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                Job Your Applying For:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="ddlJobs" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlJobs_SelectedIndexChanged">
                    <asp:ListItem>No Position Selected</asp:ListItem>
                    <asp:ListItem>Manager Positions</asp:ListItem>
                    <asp:ListItem>Floor Positions</asp:ListItem>
                    <asp:ListItem>Store Room Positions</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="lstJobs" runat="server" CssClass="auto-style272" Height="59px" Width="143px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rvfJobs" runat="server" ControlToValidate="lstJobs" ErrorMessage="Must Not Be Empty" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </p>
            <p>
                Upload CV:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
            <p>
                &nbsp;</p>
            <asp:Button ID="btnApply" runat="server"  Text="Apply" OnClick="btnApply_Click"/>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" OnClick="btnClear_Click" runat="server"  Text="Clear" />
            <br />
            <br />
            <br />

            

        </div>
        </div>

    </div>
</asp:Content>
