using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rule
{
    public class UserInformation
    {
        public bool UserName(string uid)
        {
            return (int)DAL.DbHelp.ExecScalar("select count(*) from UserInformation where loginName='" + uid + "'") == 0;
        }
    }
}
