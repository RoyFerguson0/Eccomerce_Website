using projAssignment.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projAssignment
{
    public partial class Basket : System.Web.UI.Page
    {
        Boolean status = false;
        Boolean status2 = false;
        double totalCost = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CART"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            displayDetails();
            if (User.Identity.IsAuthenticated)
            {
                status = true;
                if (totalCost > 0)
                {
                    status2 = true;
                }
                else
                {
                    status2 = false;
                }
            }
        }

        // adds each item in the cart detail to the page
        private void displayDetails()
        {
            // clear the panel that may have previous items
            this.pnlOrders.Controls.Clear();
           


            // get number of products in cart and show summary
            ArrayList arrCart = (ArrayList)Session["CART"];
            int totalItems = arrCart.Count;

            totalCost = 0;
            int totalQuantity = 0;
            // go through items in the cart (ArrayList) and add the details
            for (int loop = 0; loop < totalItems; loop++)
            {
                StringBuilder sb = new StringBuilder();

                CartItem cartItem = (CartItem)arrCart[loop];

                Label itemLabel = new Label();
                itemLabel.CssClass = "cartInfo";
                
                sb.Append("<br>______________________________________<br>");

                sb.Append("Name : " + cartItem.getItemName() + "<br>");
                sb.Append("Cost : " + cartItem.getCost() + "<br>");
                sb.Append("Quantity: " + cartItem.getQuantity() + "<br>");
                itemLabel.Text = sb.ToString();

                totalQuantity += cartItem.getQuantity();
                totalCost += cartItem.getCost() * cartItem.getQuantity();

                
                // add the item controls (labels) to the panel  
                this.pnlOrders.Controls.Add(itemLabel);
                
            }//for

            // add total quanity of all items to label as well as total products
            this.lblOrderSummary.Text = totalItems + " products in your cart" + "<br>" + totalQuantity + " items in total in your cart";
            // show final cost
            this.lblTotalCost.Text = "<br><br>Total cost : £" + totalCost;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // This one creates a new arrylist one above opens array and clears it
            ArrayList arrCart = new ArrayList();
            Session["CART"] = arrCart;
            
            displayDetails();
            
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            if (status == true)
            {
                if (status2 == true)
                {
                    ArrayList arrCart = new ArrayList();
                    Session["CART"] = arrCart;

                    Response.Redirect("Purchased.aspx");
                }
            }
            else
            {
                // Due to asp.net functions e.g. button when you clicked on a link the message appeared 
                // when it should of appeared at all - so have removed to save any bother but should of worked.

                /* string message = "You Need to Login to Purchase Items?";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("');");
                ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", sb.ToString()); */

                Response.Redirect("Login.aspx");
            }
        }
    }
}