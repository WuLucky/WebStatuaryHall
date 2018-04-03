using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace DAL
{
    public class UserInformationDAL
    {
        public List<Model.UserInformation> GetUserInfo(string whereStr = null, int start = 1, int end = 10)
        {
            List<Model.UserInformation> customer = new List<Model.UserInformation>();

            if (DbHelp.OpenConnection())
            {
                SqlDataReader dr = DbHelp.ExecReader("select * from (select ROW_NUMBER() over (Order by UIID) as CusID, * from [UserInformation] where [delete]=0 " + whereStr + ") as c where c.CusID between " + start + " and " + end);

                if (dr != null)
                {
                    while (dr.Read())
                        customer.Add(new Model.UserInformation((int)dr["UIID"], dr["Name"] as string, dr["Password"] as string, dr["loginName"] as string, dr["Age"] as string, dr["Gender"] as string, dr["Telephone"] as string, dr["qq"] as string, dr["Mailbox"] as string,(int)dr["SecurityID"],(int)dr["delete"],(int)dr["StateID"]));
                }

                DbHelp.CloseConnection();
            }

            return customer;
        }
        public int Userinformation(Model.UserInformation cus)
        {
            return DbHelp.ExecQuery("insert into UserInformation values('"+cus.Name+"','"+cus.Password+"','"+cus.loginName+"','','','','','','','','')");
        }
        public int UpdateUserInfo(Model.UserInformation cus)
        {
            string sql = "Update UserInformation set StateID=0";
            if (!string.IsNullOrEmpty(cus.Name))
                sql += ",[Name]='" + cus.Name + "'";
            if (!string.IsNullOrEmpty(cus.Password))
                sql += ",[Password]='" + cus.Password + "'";
            if (!string.IsNullOrEmpty(cus.loginName))
                sql += ",[loginName]='" + cus.loginName + "'";
            if (!string.IsNullOrEmpty(cus.Age))
                sql += ",[Age]='" + cus.Age + "'";
            if (!string.IsNullOrEmpty(cus.Gender))
                sql += ",[Gender]='" + cus.Gender + "'";
            if (!string.IsNullOrEmpty(cus.Telephone))
                sql += ",[Telephone]='" + cus.Telephone + "'";
            if (!string.IsNullOrEmpty(cus.qq))
                sql += ",[qq]='" + cus.qq + "'";
            if (!string.IsNullOrEmpty(cus.Mailbox))
                sql += ",[Mailbox]='" + cus.Mailbox + "'";
            sql += " where [UIID]='" + cus.UIID + "'";
            return DbHelp.ExecQuery(sql);
        }
        public int DeleteUserInfo(string id)
        {
            return DbHelp.ExecQuery("Update [UserInformation] set delete=1 where [UIID] in (" + id + ")");
        }
    }
}
