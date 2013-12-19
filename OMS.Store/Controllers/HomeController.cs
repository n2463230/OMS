using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OMS.Store.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View("Front");
        }

        [HttpPost]
        public ActionResult UploadFile(HttpPostedFileBase files)
        {
            int fileId = 0;

            string fileName = Path.GetFileNameWithoutExtension(files.FileName) + fileId + Path.GetExtension(files.FileName);

            if (files.ContentLength > 0)
            {
                string extenstion = Path.GetExtension(files.FileName);

                //if (extenstion != null &&
                //    (string.Compare(extenstion.ToLower(), ".xls", StringComparison.InvariantCulture) == 0
                //    ||
                //    string.Compare(extenstion.ToLower(), ".xlsx", StringComparison.InvariantCulture) == 0))
                //{
                    try
                    {
                        string filePath = Path.Combine(Convert.ToString(ConfigurationManager.AppSettings["UploadFilePath"]),
                                                                   Path.GetFileNameWithoutExtension(files.FileName) + fileId +
                                                                   Path.GetExtension(files.FileName));

                        files.SaveAs(filePath);
                        return Content("File uploaded Successfully");
                    }
                    catch (Exception)
                    {
                        return new JsonResult { Data = "Some problem occured while uploading file" };
                    }
                //}
                //else
                //{
                //    return new JsonResult { Data = "Please select excel file to upload" };
                //}
            }
            else
            {
                return new JsonResult { Data = "Some problem occured while uploading file" };
            }
            return null;
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
