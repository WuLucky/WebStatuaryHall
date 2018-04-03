using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStatuaryHall
{
    public partial class WebRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Model.UserInformation cus = new Model.UserInformation();
            cus.Name = Name.Text.Trim().ToLower();
            cus.Password = pwd.Text.Trim();
            cus.loginName = loginname.Text.Trim();

                int count = new BLL.UserlnformationBLL().Userinformation(cus);
                switch (count)
                {
                    case -3:
                        lblmsg.Text = "您输入的账号已经存在！<br/>请重新选择！";
                        break;
                    case -2:
                        lblmsg.Text = "数据库连接失败！<br/>请检查您的数据库或联系管理员！";
                        break;
                    case -1:
                        lblmsg.Text = "数据操作失败！<br/>请检查您输入的数据或联系管理员！";
                        break;
                    case 0:
                        lblmsg.Text = "注册失败！<br/>请检查您输入的数据！";
                        break;
                    default:
                        Session["UserInformation"] = cus;
                        lblmsg.Text = "注册成功!你可以<a href='WebSignIn.aspx'>登录了</a>";
                        break;
                }
            
        }
    }
}