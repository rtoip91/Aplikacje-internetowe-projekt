using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace Mpi_web.App_Code
{
    public class MyUser : RoleProvider
    {
        private string applicationName;

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();


            
        }

        public override string ApplicationName
        {
            get
            {
                return applicationName;
            }
            set
            {
                applicationName = value;
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

        public override string[] GetRolesForUser(string username)
        {
            Baza2Context panel = new Baza2Context();
            typ upr = null;
            uzytkownik user1 = null;
           
             string[] lista = new string[1];
             try
             {
                 user1 = (from u in panel.uzytkownik where u.login == username select u).First();

                 upr = (from u in panel.typ where u.id_typ == user1.typ_id_typ select u).FirstOrDefault();
                 lista[0] = upr.nazwa;
                 return lista;
             }
             catch
             {
                 lista[0] = "";
                 return lista;
             }
            

        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            Baza2Context panel = new Baza2Context();
            typ upr = new typ();
            try
            {
                 upr = (from u in panel.typ where u.nazwa == roleName select u).First();
            }
            catch
            {
                return false;
            }
            uzytkownik u1 = null;
            
            try
            {
                u1 = (from u in panel.uzytkownik where u.login == username && u.typ_id_typ == upr.id_typ select u).First();
            }
            catch
            {
                u1 = null;
            }
           
            if (u1 != null ) return true;
            else return false;

        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
    }
}