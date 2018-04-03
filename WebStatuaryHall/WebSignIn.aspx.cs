using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStatuaryHall
{
    public partial class WebSignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if ((Request.Cookies.Count > 0) && (Request.Cookies["loginName"] != null))
                    txtName.Text = Request.Cookies["loginName"].Value as string;
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Model.UserInformation user = new BLL.UserlnformationBLL().GetUserInfo(txtName.Text.Trim().ToLower(), txtpwd.Text);
            
            if(string.IsNullOrEmpty(user.loginName))
            {
                lblmge.Text = user.Name;
            }
            else
            {
                new BLL.UserlnformationBLL().UpdateUserInfo(new Model.UserInformation() { loginName = user.loginName });
                Session["UserInformation"] = user;
                Response.Redirect("WebCensoringAndAdding.aspx");
            }
        }
    }
}