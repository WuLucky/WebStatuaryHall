using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 迅雷与百度链接
    /// </summary>
    public class LinkInformation
    {
        public int LIId { get; set; }
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
        /// 链接编号
        /// </summary>
        public int LinkID { get; set; }
        /// <summary>
        /// 外键
        /// </summary>
        public int StateID { get; set; }
    }
}
