using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIlestones
{
    public class CartItem
    {
        private string name;
        private int _productId;
        private string description;
        private decimal price;
        private int quantity;

        public CartItem(string name, int productId, string description, decimal price, int quantity)
        {
            this.Name = name;
            ProductId = productId;
            this.Description = description;
            this.Price = price;
            this.Quantity = quantity;
        }

        public int ProductId { get => _productId; set => _productId = value; }
        public string Description { get => description; set => description = value; }
        public decimal Price { get => price; set => price = value; }
        public string Name { get => name; set => name = value; }
        public int Quantity { get => quantity; set => quantity = value; }
    }

}