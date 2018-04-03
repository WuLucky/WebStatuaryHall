using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 登录等信息表
    /// </summary>
    public class UserInformation
    {
        public UserInformation() { }
        public UserInformation(int uiid,string name,string password,string loinname,
            string age,string gender,string telephone,string qqs,string mailbox,int securityid,int deletes,int stateid)
        {
            UIID = uiid;
            Name = name;
            Password = password;
            loginName = loinname;
            Age = age;
            Gender = gender;
            Telephone = telephone;
            qq = qqs;
            Mailbox = mailbox;
            SecurityID = securityid;
            delete = deletes;
            StateID = stateid;
        }
        public int UIID { get; set; }
        /// <summary>
        /// 姓名称号
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 登录密码
        /// </summary>
        public string Password { get; set; }
        /// <summary>
        /// 账号
        /// </summary>
        public string loginName { get; set; }
        /// <summary>
        /// 年龄
        /// </summary>
        public string Age { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// 电话
        /// </summary>
        public string Telephone { get; set; }
        /// <summary>
        /// QQ
        /// </summary>
        public string qq { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        public string Mailbox { get; set; }
        /// <summary>
        /// 密保编号
        /// </summary>
        public int SecurityID { get; set; }
        /// <summary>
        /// 删除
        /// </summary>
        public int delete { get; set; }
        /// <summary>
        /// 外键
        /// </summary>
        public int StateID { get; set; }
    }
}
