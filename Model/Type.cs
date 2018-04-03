using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 类型
    /// </summary>
    public class Type
    {
        /// <summary>
        /// ID
        /// </summary>
        public int TypeID { get; set; }
        /// <summary>
        /// 类型名称
        /// </summary>
        public string StateName { get; set; }
        /// <summary>
        /// 类型编号
        /// </summary>
        public int StateNameID { get; set; }
        /// <summary>
        /// 外键
        /// </summary>
        public int StateID { get; set; }
    }
}
