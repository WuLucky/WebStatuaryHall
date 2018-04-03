using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class PictureInformation
    {
        public PictureInformation() { }
        public PictureInformation(int miid,string pictureName, string performer,string region,DateTime particularyear,
            DateTime updatedate, string plotintroduction, int picturenumber, int statanameid, int linkid, int statid,
            int Delete, int stateid,string statename)
        {
            MIID = miid;
            PictureName = pictureName;
            Performer = performer;
            Region = region;
            ParticularYear = particularyear;
            UpdateDate = updatedate;
            Plotintroduction = plotintroduction;
            PictureNumber = picturenumber;
            StateNameID = statanameid;
            LinkID = linkid;
            Statname= statid;
            delete = Delete;
            StateID = stateid;
            //ThunderboltLink = thunderboltlink;
            //BSL = bsl;
            //SDLP = sdlp;
            //State = state;
            StateName = statename;
        }
        public int MIID { get; set; }
        /// <summary>
        /// 图片名
        /// </summary>
        public string PictureName { get; set; }
        /// <summary>
        /// 拍摄人
        /// </summary>
        public string Performer { get; set; }
        /// <summary>
        /// 拍摄地区
        /// </summary>
        public string Region { get; set; }
        /// <summary>
        /// 拍摄年份
        /// </summary>
        public DateTime ParticularYear { get; set; }
        /// <summary>
        /// 上传日期
        /// </summary>
        public DateTime UpdateDate { get; set; }
        /// <summary>
        /// 图片介绍
        /// </summary>
        public string Plotintroduction { get; set; }
        /// <summary>
        /// 图片编号
        /// </summary>
        public int PictureNumber { get; set; }
        /// <summary>
        /// 类型编号
        /// </summary>
        public int StateNameID { get; set; }
        /// <summary>
        /// 链接编号
        /// </summary>
        public int LinkID { get; set; }
        /// <summary>
        /// 状态编号
        /// </summary>
        public int Statname { get; set; }
        /// <summary>
        /// 删除号
        /// </summary>
        public int delete { get; set; }
        /// <summary>
        /// 外键
        /// </summary>
        public int StateID { get; set; }
        /// <summary>
        /// 迅雷链接
        /// </summary>
        public string ThunderboltLink { get; set; }
        /// <summary>
        /// 百度链接
        /// </summary>
        public string BSL { get; set; }
        /// <summary>
        /// 百度链接密码
        /// </summary>
        public string SDLP { get; set; }
        /// <summary>
        /// 状态名称
        /// </summary>
        public string State { get; set; }
        /// <summary>
        /// 类型名称
        /// </summary>
        public string StateName { get; set; }
    }
}
