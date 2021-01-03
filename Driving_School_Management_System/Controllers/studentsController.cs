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
    public class studentsController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: students
        public ActionResult Index()
        {
            var sTUDENTS = db.STUDENTS.Include(s => s.DURATION).Include(s => s.SHIFT);
            return View(sTUDENTS.ToList());
        }

        // GET: students/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            STUDENT sTUDENT = db.STUDENTS.Find(id);
            if (sTUDENT == null)
            {
                return HttpNotFound();
            }
            return View(sTUDENT);
        }

        // GET: students/Create
        public ActionResult Create()
        {
            ViewBag.Duration_ID = new SelectList(db.DURATIONs, "ID", "DurationTime");
            ViewBag.SHIFT_ID = new SelectList(db.SHIFTS, "ID", "WhichShift");
            return View();
        }

        // POST: students/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,FirstName,LastName,Addres,Telephone,Email,gender,Duration_ID,SHIFT_ID")] STUDENT sTUDENT)
        {
            if (ModelState.IsValid)
            {
                db.STUDENTS.Add(sTUDENT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Duration_ID = new SelectList(db.DURATIONs, "ID", "DurationTime", sTUDENT.Duration_ID);
            ViewBag.SHIFT_ID = new SelectList(db.SHIFTS, "ID", "WhichShift", sTUDENT.SHIFT_ID);
            return View(sTUDENT);
        }

        // GET: students/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            STUDENT sTUDENT = db.STUDENTS.Find(id);
            if (sTUDENT == null)
            {
                return HttpNotFound();
            }
            ViewBag.Duration_ID = new SelectList(db.DURATIONs, "ID", "DurationTime", sTUDENT.Duration_ID);
            ViewBag.SHIFT_ID = new SelectList(db.SHIFTS, "ID", "WhichShift", sTUDENT.SHIFT_ID);
            return View(sTUDENT);
        }

        // POST: students/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,FirstName,LastName,Addres,Telephone,Email,gender,Duration_ID,SHIFT_ID")] STUDENT sTUDENT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sTUDENT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Duration_ID = new SelectList(db.DURATIONs, "ID", "DurationTime", sTUDENT.Duration_ID);
            ViewBag.SHIFT_ID = new SelectList(db.SHIFTS, "ID", "WhichShift", sTUDENT.SHIFT_ID);
            return View(sTUDENT);
        }

        // GET: students/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            STUDENT sTUDENT = db.STUDENTS.Find(id);
            if (sTUDENT == null)
            {
                return HttpNotFound();
            }
            return View(sTUDENT);
        }

        // POST: students/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            STUDENT sTUDENT = db.STUDENTS.Find(id);
            db.STUDENTS.Remove(sTUDENT);
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
