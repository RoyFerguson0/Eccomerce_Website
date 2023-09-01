using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using projAssignment.App_Code;
using System.Text;

namespace projAssignment
{
    public partial class Producst : System.Web.UI.Page
    {
        int QuantityOfProduct = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CART"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            if(!IsPostBack)
            {
                updateCartSummary();
            }
        }

        protected void btnProduct1_Click(object sender, EventArgs e)
        {
            CartItem Equipment = new CartItem();
            Equipment.setItemName("Epson EcoTank ET-2820 All in One Wireless Inkjet Printer");
            Equipment.setCost(209.99);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for(int i = 0; i<arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
         //   lbnBasket.Text = "(" + QuantityOfProduct + ")";
            updateCartSummary();

        }

        protected void btnProduct2_Click(object sender, EventArgs e)
        {

            CartItem Equipment = new CartItem();
            Equipment.setItemName("Apple iphone 14");
            Equipment.setCost(769.00);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for (int i = 0; i < arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
            updateCartSummary();
        }

        protected void btnProduct3_Click(object sender, EventArgs e)
        {
            CartItem Equipment = new CartItem();
            Equipment.setItemName("Cannon Pixma TS3355");
            Equipment.setCost(44.99);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for (int i = 0; i < arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
            updateCartSummary();
        }

        protected void btnProduct4_Click(object sender, EventArgs e)
        {
            CartItem Equipment = new CartItem();
            Equipment.setItemName("JVC LT-39CA120 Android TV");
            Equipment.setCost(189.99);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for (int i = 0; i < arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
            updateCartSummary();
        }

        protected void btnProduct5_Click(object sender, EventArgs e)
        {
            CartItem Equipment = new CartItem();
            Equipment.setItemName("CANON EOS 250D DSLR Camera with EF-S");
            Equipment.setCost(729.00);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for (int i = 0; i < arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
            updateCartSummary();
        }

        protected void btnProudct6_Click(object sender, EventArgs e)
        {
            CartItem Equipment = new CartItem();
            Equipment.setItemName("MICROSOFT Xbox Series S");
            Equipment.setCost(249.00);
            Equipment.setQuantity(1);

            ArrayList arrCart = (ArrayList)Session["CART"];

            bool productExists = false;
            int storedItem = 0;

            for (int i = 0; i < arrCart.Count; i++)
            {
                CartItem productStored = (CartItem)arrCart[i];
                if (productStored.getItemName().Equals(Equipment.getItemName()))
                {
                    productExists = true;

                    QuantityOfProduct = productStored.getQuantity();

                    storedItem = i;
                }
            }

            if (productExists)
            {
                Equipment.setQuantity(QuantityOfProduct += 1);

                arrCart.RemoveAt(storedItem);
            }

            arrCart.Add(Equipment);

            Session.Add("CART", arrCart);
            updateCartSummary();
        }

        private void updateCartSummary()
        {
            // get number of items in cart & show in link button
            ArrayList arrCart = (ArrayList)Session["CART"];
            //   int totalItems = cart.Count;
            //   this.lbnBasket.Text = "(" + totalItems + ")";
            int totalItems = arrCart.Count;
            int totalQuantity = 0;
            // go through items in the cart (ArrayList) and add the details
            for (int loop = 0; loop < totalItems; loop++)
            {
                CartItem cartItem = (CartItem)arrCart[loop];
                totalQuantity += cartItem.getQuantity();
                
            }//for
            this.lbnBasket.Text = "(" + totalQuantity + ")";

        }
        
        

        protected void lbnBasket_Click(object sender, EventArgs e)
        {
            Response.Redirect("Basket.aspx");
        }

        
    }
}