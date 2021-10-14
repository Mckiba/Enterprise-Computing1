using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIlestones
{
    public class Products
    {
        List<CartItem> items = new List<CartItem>();



        private string id;
        private string name;
		private string description;
		private string category;
		private string price;
		private string image;

        public Products(string id, string name, string description, string category, string price, string image)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.category = category;
            this.price = price;
            this.image = image;
        }

        public string Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public string Category { get => category; set => category = value; }
        public string Price { get => price; set => price = value; }
        public string Image { get => image; set => image = value; }
    }
}