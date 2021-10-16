using System;

using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;



namespace MIlestones
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        int count = 0;
        decimal GrandTotal = 0;

        List<CartItem> items = new List<CartItem>();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["ItemObject1"] != null)
            {
                // Get value from Session  variable and cast it to its corresponding type
                CartItem obj = (CartItem)Session["ItemObject1"];
                items.Insert(count, obj);
                count++;
            }

            if (Session["ItemObject2"] != null)
            {
                // Get value from Session  variable and cast it to its corresponding type
                CartItem obj = (CartItem)Session["ItemObject2"];
                items.Insert(count,obj);
                count++;
            }
            if (!IsPostBack)
            {
                loadProducts();
            }
            if (Session["ItemObject3"] != null)
            {
                // Get value from Session  variable and cast it to its corresponding type
                CartItem obj = (CartItem)Session["ItemObject3"];
                items.Insert(count, obj);
                count++;
            }
            if (!IsPostBack)
            {
                loadProducts();
            }
        }

        private void loadProducts()
        {
       
            GridView1.DataSource = items;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                CartItem entry = e.Row.DataItem as CartItem;
                e.Row.Cells[0].Text = entry.Name;
                e.Row.Cells[1].Text = entry.ProductId.ToString();
                e.Row.Cells[2].Text = entry.Description;
                e.Row.Cells[3].Text = entry.Price.ToString();
                //e.Row.Cells[4].Text = entry.Quantity.ToString();

                decimal Total = entry.Price * entry.Quantity;
                Label lblToalPrice = e.Row.FindControl("lblToalPrice") as Label;
                lblToalPrice.Text = Total.ToString();
                GrandTotal += Total;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblGroupTotal = e.Row.FindControl("lblGroupTotal") as Label;
                lblGroupTotal.Text = " Grand Total : $" + GrandTotal.ToString();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                //GridViewRow row = GridView1.Rows[rowIndex];

                System.Diagnostics.Debug.WriteLine(rowIndex);

                //items.RemoveAt(index);
                items.RemoveAt(rowIndex);
                string sessionVar = "ItemObject" + (rowIndex + 1);
                Session.Remove(sessionVar);
                count--;
                loadProducts();

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int prodID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex]["ProductId"]);
            //CartItem item = this.items.Find(c => c.ProductId == prodID);
            int output = e.RowIndex;
            System.Diagnostics.Debug.WriteLine(output);
            items.RemoveAt(output);
            string sessionVar = "ItemObject" + (output+1);
            Session.Remove(sessionVar);
            count--;
            System.Diagnostics.Debug.WriteLine(sessionVar);
            this.loadProducts();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int productID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex]["ProductId"]);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            TextBox quantity = row.FindControl("txtQuantity") as TextBox;

            CartItem cart = this.items.Find(c => c.ProductId == productID);
            int q = Convert.ToInt32(quantity.Text.Trim());
            cart.Quantity = q;

            System.Diagnostics.Debug.WriteLine(cart.ToString());


            this.loadProducts();
        }
    }

}