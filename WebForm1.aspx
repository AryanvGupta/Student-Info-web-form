<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            width: 250px;
            font-size: large;
        }
        .auto-style4 {
            width: 250px;
            font-size: large;
            height: 34px;
        }
        .auto-style5 {
            height: 34px;
            width: 32px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 692px;
        }
        .auto-style8 {
            height: 34px;
            width: 692px;
        }
        .auto-style9 {
            width: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style6">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    <h2><strong>Enter Student Info.</strong></h2>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <p class="auto-style2">
                        Name</p>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox_name" runat="server" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a valid name" ControlToValidate="TextBox_name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        DoB</p>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_dob" runat="server" Width="239px" TextMode="Date"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Date of Birth" ControlToValidate="TextBox_dob" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Email</p>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_email" runat="server" CausesValidation="True" TextMode="Email" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a valid email id" ControlToValidate="TextBox_email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <p class="auto-style2">
                        Country</p>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList_country" runat="server" Width="246px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_country_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select your country" ControlToValidate="DropDownList_country" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <p class="auto-style2">
                        State</p>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList_state" runat="server" Width="246px" AutoPostBack="True" OnSelectedIndexChanged="DropownList_state_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select your state" ControlToValidate="DropDownList_state" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        City</p>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList_city" runat="server" Width="246px" AutoPostBack="True">
                    </asp:DropDownList>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select your city" ControlToValidate="DropDownList_city" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Address</p>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_address" runat="server" TextMode="MultiLine" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter a valid address" ControlToValidate="TextBox_address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Gender</p>
                </td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="416px" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Preffer not to say</asp:ListItem>
                    </asp:RadioButtonList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Select your gender" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Hobbies</p>
                </td>
                <td class="auto-style7">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="244px">
                        <asp:ListItem>Dance</asp:ListItem>
                        <asp:ListItem>Music</asp:ListItem>
                        <asp:ListItem>Sports</asp:ListItem>
                        <asp:ListItem>Programing</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Password</p>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter the password" ControlToValidate="TextBox_password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <p class="auto-style2">
                        Confirm Password</p>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_conpassword" runat="server" Width="239px"></asp:TextBox>
&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ErrorMessage="Password not matched. Try again" ControlToValidate="TextBox_conpassword" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Profile Picture</td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="352px" />
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please select an image" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_submit" runat="server" Height="35px" OnClick="Button1_Click" Text="Submit" Width="196px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
