
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System;

namespace WebStatuaryHall
{
    public partial class WebCensoringAndAdding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BindGrid()
        {

        }

        protected void btnUoload_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                try
                {
                    string path = FileUpload1.PostedFile.FileName;
                    string type = path.Substring(path.LastIndexOf("."));
                    string name = DateTime.Now.ToFileTime() + type;

                    FileUpload1.SaveAs("C:\\" + name);
                    lblMsg.Text="文件名："+path+"<br/>";
                    Label1.Text = "文件大小：" + FileUpload1.PostedFile.ContentLength + "<br/>";
                    Label2.Text = "文件类型：" + FileUpload1.PostedFile.ContentType + "<br/>";
                    Label3.Text = "上传文件名称：" + name + "<br/>";
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "异常:"+ex.Message;
                }
            }
            else
            {
                lblMsg.Text = "请选择一个文件";
            }

        }
    }
}