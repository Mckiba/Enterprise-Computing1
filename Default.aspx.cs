using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIlestones
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           ftProduct1.ImageUrl = Application["featuredProduct1"].ToString();
           ftProduct2.ImageUrl = Application["featuredProduct2"].ToString();
           ftProduct3.ImageUrl = Application["featuredProduct3"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");

        }
    }
}