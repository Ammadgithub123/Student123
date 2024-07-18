using System;
using System.Security.Principal;

namespace school_management_portal
{
    internal class UserManager<T>
    {
        private object userStore;

        public UserManager(object userStore)
        {
            this.userStore = userStore;
        }

        internal IdentityResult Create(IdentityUser user, string text)
        {
            throw new NotImplementedException();
        }

        internal object CreateIdentity(IdentityUser user, object applicationCookie)
        {
            throw new NotImplementedException();
        }

        internal object CreateIdentity(object user, object applicationCookie)
        {
            throw new NotImplementedException();
        }

        internal object CreateIdentity(IPrincipal user, object applicationCookie)
        {
            throw new NotImplementedException();
        }

        internal IdentityUser Find(string text1, string text2)
        {
            throw new NotImplementedException();
        }
    }
}