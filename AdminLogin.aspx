<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        body { font-size: 70%; font-family: Arial; }
       
    </style>
    <script type="text/javascript">
     
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h2>
            Admin Login</h2>
        <table style="width: 20%; height: 76px;">
            <tr>
                <td>
                    Email:</td>
                <td>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Missing</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                   
                    Password:</td>
                <td>
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                     
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Missing</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                   
                </td>
                <td>
                   
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td>
                   </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                   </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
