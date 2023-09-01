using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projAssignment
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBlog();
            if (User.Identity.IsAuthenticated)
            {
                String name = User.Identity.Name;
                if (name.Equals("Freddy") || name.Equals("BOSS"))
                {
                    btnClear.Visible = true;
                }
                else
                {
                    btnClear.Visible= false;
                }
                
            }
            else
            {
                btnClear.Visible = false;
            }
        }

        protected void loadBlog()
        {
            String[] arrBlog = File.ReadAllLines(Server.MapPath("~/Data/Blog_Data.txt"));

            txtBlog.Text = "";
            foreach (String line in arrBlog)
            {
                txtBlog.Text += line;
                txtBlog.Text += "\n";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string user = "unknown";
            if (User.Identity.IsAuthenticated)
            {
                user = User.Identity.Name;
            }

            if (txtEntry.Text != "")
            {
                //txtBlog.Text += user + " >> " + DateTime.UtcNow.ToShortTimeString() + " >> " + txtEntry.Text + "\n";

                string newMessage = "------------------------------------------------------\nUser: " + user + "\t" + "Time: " + DateTime.UtcNow.ToLongDateString() + " " + DateTime.UtcNow.ToShortTimeString() + "\n" + "Sent: " + txtEntry.Text + "\n";
                newMessage += txtBlog.Text;
                File.WriteAllText(Server.MapPath("~/Data/Blog_Data.txt"), newMessage);
                //txtBlog.Text += txtEntry.Text + "\n";
                //File.WriteAllText(Server.MapPath("~/Files/blogtext.txt"), txtBlog.Text);
                txtEntry.Text = "";
                loadBlog();
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBlog.Text = "";
            string clear = "";
            File.WriteAllText(Server.MapPath("~/Data/Blog_Data.txt"), clear);
        }
    }
}