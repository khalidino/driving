using Driving_School_Management_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Driving_School_Management_System.Controllers
{
    [Authorize]
    public class dashboardController : Controller
    {
      
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();
        // GET: dashboard
        public ActionResult Index()
        {
            ViewBag.Durations = db.DURATIONs.Count();
            ViewBag.Shifts = db.SHIFTS.Count();
            ViewBag.Students = db.STUDENTS.Count();
            ViewBag.attendence = db.ATTENDENCEs.Count();
            ViewBag.INSTRUCTOR = db.INSTRUCTORs.Count();
            ViewBag.EMPLOYEE = db.employees.Count();
            ViewBag.NEWS = db.NEWS.Count();
            ViewBag.CAR = db.CAR_DETAIL.Count();
            ViewBag.date = DateTime.Now.ToShortDateString();
            ViewBag.time = DateTime.Now.ToString("h:mm:ss tt");
            return View();
        }
    }
}