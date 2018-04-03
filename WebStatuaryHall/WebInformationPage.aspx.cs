using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Windows.Forms;
namespace WebStatuaryHall
{
    public partial class WebInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                WebINFO();
        }
        protected void WebINFO()
        {
            Model.PictureInformation PictureInformation = new BLL.PictureInformationBLL().selectMovie(int.Parse(Request.QueryString["id"])).First();

            if (PictureInformation != null)
            {
                imgName.ImageUrl = "~/Image/12/" + PictureInformation.PictureNumber + ".jpg";
  
                Name.Text = PictureInformation.PictureName;   
                Regions.Text = PictureInformation.Region;
                Performers.Text = PictureInformation.Performer;
                Particularyears.Text = PictureInformation.ParticularYear.ToString("yyyy-MM-dd");
                updatedates.Text = PictureInformation.UpdateDate.ToString("yyyy-MM-dd");
                plotintroductions.Text = PictureInformation.Plotintroduction;
                StatenameIDs.Text = PictureInformation.ThunderboltLink;
                Statnames.Text = PictureInformation.BSL;
               // ThunderboltLinks.Text = PictureInformation.SDLP;
                BSLs.Text = PictureInformation.State;
                SDLPs.Text = PictureInformation.StateName;
              
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
                
        }

        //protected void textButton1_Click(object sender, EventArgs e)
        //{
        //    Thread th = new Thread(new ThreadStart(copy));
        //    th.ApartmentState = ApartmentState.STA;
        //    th.Start();
        //    Response.Write("<script type=text/javascript>alert('链接已复制到剪贴板！');</script>");
        //}

        //void copy()
        //{
        //    string a = ThunderboltLinks.Text;
        //    Clipboard.SetText(a);
        //}

        //protected void Unnamed3_Click(object sender, EventArgs e)
        //{

        //    Thread th = new Thread(new ThreadStart(copys));
        //    th.ApartmentState = ApartmentState.STA;
        //    th.Start();
        //    Response.Write("<script type=text/javascript>alert('链接已复制到剪贴板！');</script>");
        //}
        //void copys()
        //{
        //    string a = BSLs.Text;
        //    Clipboard.SetText(a);
        //}

    }
}