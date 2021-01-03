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
    public class attendenceController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: attendence
        public ActionResult Index()
        {
            var aTTENDENCEs = db.ATTENDENCEs.Include(a => a.STUDENT);
            return View(aTTENDENCEs.ToList());
        }

        // GET: attendence/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ATTENDENCE aTTENDENCE = db.ATTENDENCEs.Find(id);
            if (aTTENDENCE == null)
            {
                return HttpNotFound();
            }
            return View(aTTENDENCE);
        }

        // GET: attendence/Create
        public ActionResult Create()
        {
            ViewBag.STID = new SelectList(db.STUDENTS, "ID", "FirstName");
            return View();
        }

        // POST: attendence/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,STID,DATES,TIME_IN,TIME_OUT")] ATTENDENCE aTTENDENCE)
        {
            if (ModelState.IsValid)
            {
                db.ATTENDENCEs.Add(aTTENDENCE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.STID = new SelectList(db.STUDENTS, "ID", "FirstName", aTTENDENCE.STID);
            return View(aTTENDENCE);
        }

        // GET: attendence/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ATTENDENCE aTTENDENCE = db.ATTENDENCEs.Find(id);
            if (aTTENDENCE == null)
            {
                return HttpNotFound();
            }
            ViewBag.STID = new SelectList(db.STUDENTS, "ID", "FirstName", aTTENDENCE.STID);
            return View(aTTENDENCE);
        }

        // POST: attendence/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,STID,DATES,TIME_IN,TIME_OUT")] ATTENDENCE aTTENDENCE)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aTTENDENCE).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.STID = new SelectList(db.STUDENTS, "ID", "FirstName", aTTENDENCE.STID);
            return View(aTTENDENCE);
        }

        // GET: attendence/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ATTENDENCE aTTENDENCE = db.ATTENDENCEs.Find(id);
            if (aTTENDENCE == null)
            {
                return HttpNotFound();
            }
            return View(aTTENDENCE);
        }

        // POST: attendence/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ATTENDENCE aTTENDENCE = db.ATTENDENCEs.Find(id);
            db.ATTENDENCEs.Remove(aTTENDENCE);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
