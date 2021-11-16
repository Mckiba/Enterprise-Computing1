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

            Products prod1 = new Products("1001", "Icon Pattern Slim Fit Shirt", "Black: Small", "Tops", "30", "monica-dahiya-597H22lgcdo-unsplash.jpg");
            Products prod2 = new Products("1002", "Oversized Fleece  Pants", "Orange: S", "Bottom", "55", "mark-adriane-NQhYx-Xk9Y0-unsplash.jpg");
            Products prod3 = new Products("1003", "Striped Slim Fit Shirt", "Orange: M", "Tops", "25.00", "phil-monte-4V4t0JcOM5E-unsplash.jpg");


               ftProduct1.ImageUrl = "Image/" + prod1.Image;

            ftProduct2.ImageUrl = "Image/" + prod2.Image;
            ftProduct3.ImageUrl = "Image/" + prod3.Image;

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