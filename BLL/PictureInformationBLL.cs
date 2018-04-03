using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace BLL
{
    public class PictureInformationBLL
    {
        public List<Model.PictureInformation> selectMovie(int picturenumber=0)
        {
            string where = "";

            if (picturenumber > 0)
            // where += "and [PictureNumber]=" + picturenumber;
            { }
            return new DAL.PictureInformationDAL().selectMovie(where);
        }

        public List<Model.PictureInformation> selectMovieByTypeId(int typeID)
        {
            if (typeID==0)
            {
                return new DAL.PictureInformationDAL().selectMovie("");
            }
            //string where = " and StateNameID="+typeID;
            string where = ""+typeID;
            return new DAL.PictureInformationDAL().selectMovie(where);
        }
        public List<Model.PictureInformation> selectMovieINFO()
        {
            return new DAL.PictureInformationDAL().selectMovieINFO();
        }
    }
}
