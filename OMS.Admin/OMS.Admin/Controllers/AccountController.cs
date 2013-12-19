using System;
using System.Collections.Generic;
using System.Transactions;
using System.Web.Mvc;
using System.Web.Security;
using Microsoft.Web.WebPages.OAuth;
using OMS.BLL;
using WebMatrix.WebData;
using OMS.Admin.Models;

namespace OMS.Admin.Controllers
{
    public class AccountController : Controller
    {
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            //Membership.CreateUser("namrata", "namrata@123", "namratanshah123@gmail.com");

            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginModel loginModel)
        {
            if (ModelState.IsValid)
            {
                bool userValidation = Membership.ValidateUser(loginModel.UserName, loginModel.Password);
                if (userValidation)
                {
                    UserService userService = new UserService();
                    Guid userId = userService.GetUserId(loginModel.UserName);
                    Session["AdminSession"] = userId;
                    return RedirectToAction("Medical", "Medical");
                }
                else
                {
                    loginModel.CustomErrorMsg = "Either username or password does not match.";
                    return View("Login", loginModel);
                }
            }
            else
            {
                return View(loginModel);
            }
        }

        [HttpPost]
        public ActionResult UnlockUser(string userName)
        {
            UserService userService = new UserService();
            userService.UnlockUser(userName);
            return View("Login");
        }
    }
}
