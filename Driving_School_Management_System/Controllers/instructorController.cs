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
    public class instructorController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: instructor
        public ActionResult Index()
        {
            return View(db.INSTRUCTORs.ToList());
        }

        // GET: instructor/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            INSTRUCTOR iNSTRUCTOR = db.INSTRUCTORs.Find(id);
            if (iNSTRUCTOR == null)
            {
                return HttpNotFound();
            }
            return View(iNSTRUCTOR);
        }

        // GET: instructor/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: instructor/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,FULLNAME,EMAIL,ADDRES,TELEPHONE,LISENCES,GENDER,EDUCATIONAL_LEVEL")] INSTRUCTOR iNSTRUCTOR)
        {
            if (ModelState.IsValid)
            {
                db.INSTRUCTORs.Add(iNSTRUCTOR);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(iNSTRUCTOR);
        }

        // GET: instructor/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            INSTRUCTOR iNSTRUCTOR = db.INSTRUCTORs.Find(id);
            if (iNSTRUCTOR == null)
            {
                return HttpNotFound();
            }
            return View(iNSTRUCTOR);
        }

        // POST: instructor/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,FULLNAME,EMAIL,ADDRES,TELEPHONE,LISENCES,GENDER,EDUCATIONAL_LEVEL")] INSTRUCTOR iNSTRUCTOR)
        {
            if (ModelState.IsValid)
            {
                db.Entry(iNSTRUCTOR).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(iNSTRUCTOR);
        }

        // GET: instructor/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            INSTRUCTOR iNSTRUCTOR = db.INSTRUCTORs.Find(id);
            if (iNSTRUCTOR == null)
            {
                return HttpNotFound();
            }
            return View(iNSTRUCTOR);
        }

        // POST: instructor/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            INSTRUCTOR iNSTRUCTOR = db.INSTRUCTORs.Find(id);
            db.INSTRUCTORs.Remove(iNSTRUCTOR);
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
