using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public partial class Admin_Default2 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string session = Session["admin"].ToString();
        if (session == null || session == "")
        { Server.Transfer("AdminLogin.aspx"); }
    }
    protected void Add_Click(object sender, EventArgs e)
    {
            string connstring = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data/ddj-fashionworld.mdb") + ";User Id=admin;Password=;";

            OleDbConnection conn = new OleDbConnection(connstring);
            conn.Open();
            OleDbCommand command = new OleDbCommand();
            command.Connection = conn;
            command.CommandText = "INSERT INTO [tbl_product] ([category_type], [category], [description], [cost_gbp], [cost_euro], [cost_german_currency], [picture_small_src], [picture_src], [date_created], [date_modified], [active]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            //command.CommandText = "INSERT INTO [tbl_product] ([category_type], [category], [description], [cost_gbp], [cost_euro], [cost_german_currency], [picture_small_src], [picture_src]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            command.Parameters.Add("@category_type", OleDbType.VarChar, 50).Value = ddl_CategoryType.SelectedItem.Text.ToString().Trim();
            command.Parameters.Add("@category", OleDbType.VarChar, 50).Value = ddl_Category.SelectedItem.Text.ToString().Trim();
            command.Parameters.Add("@description", OleDbType.VarChar, 255).Value = txtBox_description.Text.ToString().Trim();
            command.Parameters.Add("@cost_gbp", OleDbType.VarChar, 50).Value = txtBox_cost_gbp.Text.ToString().Trim();
            command.Parameters.Add("@cost_euro", OleDbType.VarChar, 50).Value = txtBox_cost_euro.Text.ToString().Trim();
            command.Parameters.Add("@cost_german_currency", OleDbType.VarChar, 50).Value = txtBox_cost_german_currency.Text.ToString().Trim();
            command.Parameters.Add("@picture_src_small", OleDbType.VarChar, 255).Value = txtBox_picture_small.Text.ToString().Trim();
            command.Parameters.Add("@picture_src", OleDbType.VarChar, 255).Value = txtBox_picture_big.Text.ToString().Trim();
            command.Parameters.Add("@date_created", OleDbType.DBTimeStamp).Value = System.DateTime.Now.ToString();
            command.Parameters.Add("@date_modified", OleDbType.DBTimeStamp).Value = System.DateTime.Now.ToString();
            command.Parameters.Add("@active", OleDbType.Boolean).Value = 1;

            command.ExecuteNonQuery();
            conn.Close(); 
        Response.Redirect("Admin.aspx");

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Server.Transfer("AdminLogin.aspx");

    }
}
