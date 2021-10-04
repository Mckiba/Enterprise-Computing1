using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIlestones
{
    public partial class Products1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Products prod1 = new Products("1001","Icon Pattern Slim Fit Shirt", "Black: Small", "Tops", "30.99", "monica-dahiya-597H22lgcdo-unsplash.jpg");
            Products prod2 = new Products("1002","Oversized Fleece  Pants", "Orange: S", "Bottom", "55.00", "mark-adriane-NQhYx-Xk9Y0-unsplash.jpg");
            Products prod3 = new Products("1003","Striped Slim Fit Shirt", "Orange: M", "Tops", "25.00", "phil-monte-4V4t0JcOM5E-unsplash.jpg");

            Products prod4 = new Products("1004","Curvy High Rise Skinny Jeans", "White: M", "Tops", "25.00", "ernest-benefit-5AQXtD9dkgw-unsplash.jpg");
            Products prod5 = new Products("1005","Striped Slim Fit Shirt", "Grey: M", "Bottom", "55.00", "alicia-petresc-BciCcl8tjVU-unsplash.jpg");
            Products prod6 = new Products("1006","Graffiti Print Jogger Pants", "Baby Blue: M", "Botttom", "55.00", "cain-beaudoin-eWKmWtHV4pY-unsplash.jpg");



            Image1.ImageUrl = "Image/" + prod1.Image;
            Label1.Text = prod1.Name;
            Label2.Text = prod1.Category;
            Label3.Text = prod1.Description;
            Label4.Text = prod1.Price;

            Image2.ImageUrl = "Image/" + prod2.Image;
            Label5.Text = prod2.Name;
            Label6.Text = prod2.Category;
            Label7.Text = prod2.Description;
            Label8.Text = prod2.Price;

            Image3.ImageUrl = "Image/" + prod3.Image;
            Label9.Text = prod3.Name;
            Label12.Text = prod3.Category;
            Label10.Text = prod3.Description;
            Label11.Text = prod3.Price;

            Image4.ImageUrl = "Image/" + prod4.Image;
            Label13.Text = prod4.Name;
            Label14.Text = prod4.Category;
            Label15.Text = prod4.Description;
            Label16.Text = prod4.Price;

            Image5.ImageUrl = "Image/" + prod5.Image;
            Label17.Text = prod5.Name;
            Label18.Text = prod5.Category;
            Label19.Text = prod5.Description;
            Label20.Text = prod5.Price;

            Image6.ImageUrl = "Image/" + prod6.Image;
            Label21.Text = prod6.Name;
            Label22.Text = prod6.Category;
            Label23.Text = prod6.Description;
            Label24.Text = prod6.Price;

            string ft1 = (string)Application["featuredProduct1"];
            string ft2 = (string)Application["featuredProduct1"];
            string ft3 = (string)Application["featuredProduct1"];


            ft1 = Image1.ImageUrl;
            ft2 = Image5.ImageUrl;
            ft3 = Image3.ImageUrl;



            Application["featuredProduct1"] = ft1;
            Application["featuredProduct2"] = ft2;
            Application["featuredProduct3"] = ft3;

        }
    }
}