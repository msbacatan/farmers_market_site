using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FMApp.Startup))]
namespace FMApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
