using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStatuaryHall
{
    public partial class WebBasicData1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Model.UserInformation custe = Session["UserInformation"] as Model.UserInformation;
            if (custe != null)
            {
                if(!IsPostBack)
                {
                    custe.Age = txtage.Text;
                    custe.Gender = txtgender.Text;
                    custe.Telephone = txtTelephone.Text;
                    custe.qq = txtqq.Text;
                    custe.Mailbox = txtMailbox.Text;
                }
            }
            else
            {

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Model.UserInformation cus = new Model.UserInformation();
            //cus.loginName  = ((Model.UserInformation)Session["UserInformation"]).loginName;
            cus.Age = txtage.Text.Trim();
            cus.Gender = txtgender.Text.Trim();
            cus.Telephone = txtTelephone.Text.Trim();
            cus.qq = txtqq.Text.Trim();
            cus.Mailbox = txtMailbox.Text.Trim();
            cus.UIID = ((Model.UserInformation)Session["UserInformation"]).UIID;
            lblmsg.Text = new BLL.UserlnformationBLL().UpdateUserInfo(cus);
        }
    }
}