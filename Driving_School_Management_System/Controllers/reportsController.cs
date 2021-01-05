using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Driving_School_Management_System.Models;

namespace Driving_School_Management_System.Controllers
{
    public class reportsController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();
        // GET: reports


        // GET: Report
        public ActionResult Index(int? id)
        {
            STUDENT sTUDENT = db.STUDENTS.Find(id);
            ATTENDENCE atten = db.ATTENDENCEs.Find(id);

            ViewBag.ATTENDENCE = atten;
            ViewBag.User = System.Web.HttpContext.Current.User.Identity.Name;
            ViewBag.Date = DateTime.Now.ToString("dd/MMM/yyyy");
            ViewBag.Time = DateTime.Now.ToShortTimeString();
            return View(sTUDENT);
        }




        public ActionResult Search(string studentIdReport)
        {
            if (!string.IsNullOrEmpty(studentIdReport))
            {
                return RedirectToAction("Index", "reports", new { id = studentIdReport.ToString() });

            }
            return View();
        }

    }
}