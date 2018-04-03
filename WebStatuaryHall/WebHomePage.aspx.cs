using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStatuaryHall
{
    public partial class WebHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
            BindRepeater();
            Response.Write("当前时间：" + DateTime.Now.ToLongTimeString());
        }
        protected void BindGrid()
        {
            //dgdShow.DataSource = new BLL.PictureInformationBLL().selectMovie();
            //dgdShow.DataBind();
            //datal.DataSource = new BLL.PictureInformationBLL().selectMovie();
            //datal.DataBind();

        }

        protected void Unnamed_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            Response.Redirect("WebInformationPage.aspx?id=" + img.ID);
        }
        protected void BindRepeater()
        {
            //int index = 0;
            //PagedDataSource pd = new PagedDataSource();
            //pd.AllowPaging = true;
            //pd.PageSize = 5;

            //BLL.PictureInformationBLL filmbll = new BLL.PictureInformationBLL();
            //pd.DataSource = filmbll.selectMovie();

            //if (index < 0)
            //    index = pd.PageCount - 1;
            //if (index > pd.PageCount - 1)
            //    index = 0;
            //pd.CurrentPageIndex = index;
            //ViewState["Index"] = index;
            //lblMsg.Text = "第" + (index + 1) + "页/共" + pd.PageCount + "页";
            //dgdShow.DataSource = pd;
            //dgdShow.DataBind();
        }

        protected void btnPre_Click(object sender, EventArgs e)
        {
        //    lblMsg.Text = (int.Parse(lblMsg.Text.Split('/')[0]) - 1) + "";
        //    BindRepeater();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //lblMsg.Text = (int.Parse(lblMsg.Text.Split('/')[0]) + 1) + "";

            //BindRepeater();

        }

    }
}