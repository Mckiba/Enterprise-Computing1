using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace MIlestones
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {

            RoleActions roleActions = new RoleActions();
            roleActions.createAdmin();

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}