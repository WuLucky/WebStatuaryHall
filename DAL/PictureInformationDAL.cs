using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class PictureInformationDAL
    {
        public List<Model.PictureInformation> selectMovie(string wherestr = null,int start = 1,int end = 90)
        {
            List<Model.PictureInformation> select = new List<Model.PictureInformation>();
            if(DbHelp.OpenConnection())
            {
                //string sql = "select * from (select ROW_NUMBER() over (Order by MIID) as BID, * from vw_MovieType where [delete]=0" + wherestr + ")as c where c.BID between " + start + " and " + end;
                // string sql = "select * from (select ROW_NUMBER() over (Order by MIID) as BID, * from vw_MovieType where [delete]=0   "+wherestr+")";
                string sql = "exec pr_MovieType "+wherestr+" ";
          
                SqlDataReader dr = DbHelp.ExecReader(sql);
                
                if(dr != null)
                {
                    while (dr.Read())
                       // select.Add(new Model.PictureInformation((int)dr["MIID"], dr["PictureName"] as string, dr["Performer"] as string, dr["Region"] as string, (DateTime)dr["ParticularYear"], (DateTime)dr["UpdateDate"], dr["Plotintroduction"] as string, (int)dr["PictureNumber"], (int)dr["StateNameID"], (int)dr["LinkID"], (int)dr["Statname"], (int)dr["delete"], (int)dr["StateID"], dr["StateName"] as string, dr["State"] as string, dr["ThunderboltLink"] as string, dr["BSL"] as string, dr["SDLP"] as string));
                         select.Add(new Model.PictureInformation((int)dr["MIID"], dr["PictureName"] as string, dr["Performer"] as string, dr["Region"] as string, (DateTime)dr["ParticularYear"], (DateTime)dr["UpdateDate"], dr["Plotintroduction"] as string, (int)dr["PictureNumber"], (int)dr["StateNameID"], (int)dr["LinkID"], (int)dr["Statname"], (int)dr["delete"], (int)dr["StateID"], dr["StateName"] as string));
                }
                DbHelp.CloseConnection();
            }
            return select;

        }
        public List<Model.PictureInformation> selectMovieINFO(string wherestr = null)
        {
            List<Model.PictureInformation> select = new List<Model.PictureInformation>();
            if (DbHelp.OpenConnection())
            {
                string sql = "select * from dbo.PictureInformation ORDER BY UpdateDate DESC";
                SqlDataReader dr = DbHelp.ExecReader(sql);

                if (dr != null)
                {
                    while (dr.Read())
                        select.Add(new Model.PictureInformation((int)dr["MIID"], dr["PictureName"] as string, dr["Performer"] as string, dr["Region"] as string, (DateTime)dr["ParticularYear"], (DateTime)dr["UpdateDate"], dr["Plotintroduction"] as string, (int)dr["PictureNumber"], (int)dr["StateNameID"], (int)dr["LinkID"], (int)dr["Statname"], (int)dr["delete"], (int)dr["StateID"], dr["StateName"] as string));
                }
                DbHelp.CloseConnection();
            }
            return select;

        }
        
        /// <summary>
        /// 方法：获取图片的数量
        /// </summary>
        /// <returns></returns>
        public int selectPicture()
        {
            return (int)DbHelp.ExecScalar("select count(*) from vw_MovieType");
        }
    }
     
}
