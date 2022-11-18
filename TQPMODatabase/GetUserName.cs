using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TQPMODatabase
{
    public class GetUserName
    {
        public static string GetName()
        {
            //var userName = System.Web.HttpContext.Current.User;
            //string userName = Page.User.Identity.Name;
            //string userName = System.Web.HttpContext.Current.User.Identity.Name;
            var userName = System.Security.Principal.WindowsIdentity.GetCurrent().Name;

            //MembershipUser currentUser = Membership.GetUser();
            //Get Username of Currently logged in user
           // string username = currentUser.UserName;
            //Get UserId of Currently logged in user
           // string UserId = currentUser.ProviderUserKey.ToString();
           // userName.ToString();
            //return userName.ToString();

            return "JFBERNI";
        }
    }
}