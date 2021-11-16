using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MIlestones.Startup))]
namespace MIlestones
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
