using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UserlnformationBLL
    {
        public Model.UserInformation GetUserInfo(string uid,string pwd)
        {
            pwd = Encryption(pwd);
            if(new Rule.UserInformation().UserName(uid))
            {
                return new Model.UserInformation() { loginName = "", Name = "账号错误!" };
            }
            List<Model.UserInformation> cus = new List<Model.UserInformation>();
            cus = new DAL.UserInformationDAL().GetUserInfo(" and loginName='" + uid + "' and [Password]='" + pwd + "'");
            if (cus.Count != 1)
            {
                return new Model.UserInformation() { loginName="", Name = "密码错误" };
            }
            else
                return cus[0];


        }
        public string UpdateUserInfo(Model.UserInformation cus)
        {
            if (!string.IsNullOrEmpty(cus.Password))
                cus.Password = Encryption(cus.Password);
            return Option(new DAL.UserInformationDAL().UpdateUserInfo(cus), "更新");
        }

        private string Option(int count,string type)
        {

            switch (count)
            {
                case -2:
                    return "数据库连接异常！请检查您的数据库或联系管理员！";
                case -1:
                    return "数据操作异常！请检查您的数据或联系管理员！";
                case 0:
                    return "没有" + type + "任何数据！";
                default:
                    return "成功" + type + count.ToString() + "条数据！";
            }
        }
        /// <summary>
        /// 用户注册
        /// </summary>
        /// <param name="cus"></param>
        /// <returns></returns>
        public int Userinformation(Model.UserInformation cus)
        {
            if (!new Rule.UserInformation().UserName(cus.Name))
                return -3;
            cus.Password = Encryption(cus.Password);
            return new DAL.UserInformationDAL().Userinformation(cus);
        }
        /// <summary>
        /// 方法：对密码进行MD5加密
        /// </summary>
        /// <param name="pwd">原始密码</param>
        /// <returns>加密后的密码</returns>
        private string Encryption(string pwd)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(pwd);
            bytes = md5.ComputeHash(bytes);
            return BitConverter.ToString(bytes);
        }
    }
}
