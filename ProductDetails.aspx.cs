using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string pid = Request.QueryString.Get("product_id");
            if (pid != null)
            {
                string connstring = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ddj-fashionworld.mdb") + ";User Id=admin;Password=;";
                string sSQL = "SELECT * FROM [tbl_product] WHERE ([product_id] = " + Int32.Parse(pid) + ")";
                OleDbConnection con = new OleDbConnection(connstring);
                OleDbCommand cmd = new OleDbCommand(sSQL, con);
                con.Open();
                OleDbDataReader dtrClient = cmd.ExecuteReader();
                rptList.DataSource = dtrClient;
                rptList.DataBind();
                con.Close();
            }
            else { Response.Redirect("Women.aspx"); }
        }
    }
}