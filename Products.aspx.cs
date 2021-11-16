using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MIlestones
{
    public partial class Products1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            fillsavedCart();
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("WebForm4.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            }
        }

        private void fillsavedCart()
            {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productimage");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("totalprice");
            String mycon = "Data Source=MCKIBAWILLIC524\\SQLEXPRESS; Initial Catalog = WeBCart; Integrated Security = True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from SavedCartDetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds); //??
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[0]["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }
    }
}