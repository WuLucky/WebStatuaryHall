using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStatuaryHall
{
    public partial class WebCategoryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int typeID = int.Parse(Request.QueryString["typeID"]??"0");
                Bindgrid(typeID);
            }
        }
        protected void Bindgrid(int typeID)
        {
            datal.DataSource = new BLL.PictureInformationBLL().selectMovieByTypeId(typeID);
            datal.DataBind();
        }

        protected void datal_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}