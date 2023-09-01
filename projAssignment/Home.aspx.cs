using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projAssignment
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // first time on this page
            if (!IsPostBack)
            {
                // create cart for this session but only if session doesn't already exist
                if (Session["CART"] == null)
                {
                    ArrayList arrCart = new ArrayList();
                    Session["CART"] = arrCart;
                    ArrayList productQuantity = new ArrayList();
                    Session["PROD"] = productQuantity;
                }
            }
            String name = User.Identity.Name;
            if(name.Equals("Freddy") || name.Equals("BOSS"))
            {
                lblUser.Visible = false;
            }
            else
            {
                lblUser.Visible = true;
            }

            
        }
    }
}