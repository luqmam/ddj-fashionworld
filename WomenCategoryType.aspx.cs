using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class WomenCategoryType : System.Web.UI.Page
{
    string qstr;
    protected void Page_Load(object sender, EventArgs e)
    {
        qstr = Request.QueryString["category_type"];
        Label1.Text = qstr;
        if (!IsPostBack)
        {
            
            if (qstr != null)
            {
                bindGrid();

            }
            else
            {
                Response.Redirect("Women.aspx");
            }
        }
      
    }

    protected void bindGrid()
    {
        DataTable dt = new DataTable();
        string connstring = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ddj-fashionworld.mdb") + ";User Id=admin;Password=;";
        OleDbConnection connection = new OleDbConnection(connstring);

        connection.Open();
        string statement = "SELECT [picture_small_src], [product_id] FROM [tbl_product] WHERE (([category] = 'Women') AND ([category_type] = @category_type))";

        OleDbCommand command = new OleDbCommand(statement, connection);
        command.Parameters.Add("@category_type", OleDbType.VarChar).Value = qstr.ToString().Trim();
        
        OleDbDataAdapter adapter = new OleDbDataAdapter(command);

        adapter.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        connection.Close();

    }

    protected void getCollection_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ddvalue = DropDownList1.SelectedValue.ToString().Trim();
        if (ddvalue != "" )
        {
            DataTable dt = new DataTable();
            string connstring = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ddj-fashionworld.mdb") + ";User Id=admin;Password=;";
            OleDbConnection connection = new OleDbConnection(connstring);

            connection.Open();
            string sqlStatement = "SELECT [picture_small_src], [product_id] FROM [tbl_product] WHERE (([category] = 'Women') AND ([category_type] = @category_type) AND ([category_type_collection] = @category_type_collection))";

            OleDbCommand command = new OleDbCommand(sqlStatement, connection);

            command.Parameters.Add("@category_type", OleDbType.VarChar).Value = qstr.ToString().Trim();
            command.Parameters.Add("@category_type_collection", OleDbType.VarChar).Value = ddvalue;

            OleDbDataAdapter adapter = new OleDbDataAdapter(command);

            adapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            connection.Close();
        }
        else {
            bindGrid();
        }
    }

     

}