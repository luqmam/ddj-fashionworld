using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email ="luqmam@gmail.com";
        string password="adminnimda";

        if (email == TextBox1.Text.ToString().Trim() && password == TextBox2.Text.ToString().Trim())
        {
            Session["admin"] = email;
            Server.Transfer("Admin.aspx");
        }
        else {
            Label1.Text = "Incorrect email or password";
        }
    }
}