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
    public class cardetailController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: cardetail
        public ActionResult Index()
        {
            var cAR_DETAIL = db.CAR_DETAIL.Include(c => c.INSTRUCTOR);
            return View(cAR_DETAIL.ToList());
        }

        // GET: cardetail/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CAR_DETAIL cAR_DETAIL = db.CAR_DETAIL.Find(id);
            if (cAR_DETAIL == null)
            {
                return HttpNotFound();
            }
            return View(cAR_DETAIL);
        }

        // GET: cardetail/Create
        public ActionResult Create()
        {
            ViewBag.INSTRUCTOR_ID = new SelectList(db.INSTRUCTORs, "ID", "FULLNAME");
            return View();
        }

        // POST: cardetail/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,CARNAME,CARMODEL,CARGEAR,ENGINE_CC,INSTRUCTOR_ID")] CAR_DETAIL cAR_DETAIL)
        {
            if (ModelState.IsValid)
            {
                db.CAR_DETAIL.Add(cAR_DETAIL);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.INSTRUCTOR_ID = new SelectList(db.INSTRUCTORs, "ID", "FULLNAME", cAR_DETAIL.INSTRUCTOR_ID);
            return View(cAR_DETAIL);
        }

        // GET: cardetail/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CAR_DETAIL cAR_DETAIL = db.CAR_DETAIL.Find(id);
            if (cAR_DETAIL == null)
            {
                return HttpNotFound();
            }
            ViewBag.INSTRUCTOR_ID = new SelectList(db.INSTRUCTORs, "ID", "FULLNAME", cAR_DETAIL.INSTRUCTOR_ID);
            return View(cAR_DETAIL);
        }

        // POST: cardetail/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,CARNAME,CARMODEL,CARGEAR,ENGINE_CC,INSTRUCTOR_ID")] CAR_DETAIL cAR_DETAIL)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cAR_DETAIL).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.INSTRUCTOR_ID = new SelectList(db.INSTRUCTORs, "ID", "FULLNAME", cAR_DETAIL.INSTRUCTOR_ID);
            return View(cAR_DETAIL);
        }

        // GET: cardetail/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CAR_DETAIL cAR_DETAIL = db.CAR_DETAIL.Find(id);
            if (cAR_DETAIL == null)
            {
                return HttpNotFound();
            }
            return View(cAR_DETAIL);
        }

        // POST: cardetail/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CAR_DETAIL cAR_DETAIL = db.CAR_DETAIL.Find(id);
            db.CAR_DETAIL.Remove(cAR_DETAIL);
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
