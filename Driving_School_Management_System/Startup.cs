using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Driving_School_Management_System.Startup))]
namespace Driving_School_Management_System
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
