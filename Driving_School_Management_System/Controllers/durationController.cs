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
    public class durationController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: duration
        public ActionResult Index()
        {
            return View(db.DURATIONs.ToList());
        }

     

        // GET: duration/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: duration/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,DurationTime")] DURATION dURATION)
        {
            if (ModelState.IsValid)
            {
                db.DURATIONs.Add(dURATION);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(dURATION);
        }

        // GET: duration/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DURATION dURATION = db.DURATIONs.Find(id);
            if (dURATION == null)
            {
                return HttpNotFound();
            }
            return View(dURATION);
        }

        // POST: duration/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,DurationTime")] DURATION dURATION)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dURATION).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(dURATION);
        }

     
     
        public ActionResult Remove(int id)
        {
            DURATION dURATION = db.DURATIONs.Find(id);
            db.DURATIONs.Remove(dURATION);
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
