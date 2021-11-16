using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using MIlestones.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
namespace MIlestones
{


    internal class RoleActions
    {
        internal void createAdmin()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var roleStore = new RoleStore<IdentityRole>(context);


            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr.RoleExists("Administrator"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole("Administrator"));
                if (!IdRoleResult.Succeeded)
                {
                    // Handle the error condition if there's a problem creating the RoleManager object.
                }
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser()
            {
                UserName = "Admin@gmail.com",
            };
            IdUserResult = userMgr.Create(appUser, "Pa$$word");

            // If the new "Admin" user was successfully created, 
            // add the "Admin" user to the "Administrator" role. 
            if (IdUserResult.Succeeded)
            {
                IdUserResult = userMgr.AddToRole(appUser.Id, "Administrator");
                if (!IdUserResult.Succeeded)
                {
                }
            }
            else
            {
                // Handle the error condition if there's a problem creating the new user. 
            }
        }
    }
}