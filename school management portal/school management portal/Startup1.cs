﻿using System;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;

[assembly: OwinStartup(typeof(ASP.NET_Identity.Startup1))]

namespace ASP.NET_Identity
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login12.aspx")
            });

        }
    }
}
