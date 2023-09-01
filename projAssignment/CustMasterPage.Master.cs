using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projAssignment
{
    public partial class CustMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (HttpContext.Current.User.Identity.Name.Equals("Freddy"))
                {
                    hylAdmin.Visible = true;
                }
                else
                {
                    hylAdmin.Visible=false;
                    hylAdmin.Style.Clear();
                }
                
                if (HttpContext.Current.User.Identity.Name.Equals("BOSS"))
                {
                    hylBoss.Visible = true;
                    hylAdmin.Visible=true;                }
                else
                {
                    hylBoss.Visible=false;
                    hylBoss.CssClass = string.Empty;

                }
                
                
            }
            else
            {
                hylAdmin.Visible = false;
                hylBoss.Visible = false;
                hylAdmin.CssClass = string.Empty;
                hylBoss.CssClass = string.Empty;
            }
        }


       

    }
}