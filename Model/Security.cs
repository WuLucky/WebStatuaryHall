using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Security
    {
        public int SecID { get; set; }
        /// <summary>
        /// 密保问题
        /// </summary>
        public string Secret { get; set; }
        /// <summary>
        /// 密保答案
        /// </summary>
        public string SecretAnswer { get; set; }
        /// <summary>
        /// 密保编号
        /// </summary>
        public int SecurityID { get; set; }
        /// <summary>
        /// 外键
        /// </summary>
        public int StateID { get; set; }
    }
}
