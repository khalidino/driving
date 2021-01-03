﻿using System;
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
    public class contactController : Controller
    {
        private DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities db = new DRIVING_SCHOOL_MANAGEMENT_SYSTEMEntities();

        // GET: contact
        public ActionResult Index()
        {
            return View(db.CONTACTs.ToList());
        }

        // GET: contact/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTACT cONTACT = db.CONTACTs.Find(id);
            if (cONTACT == null)
            {
                return HttpNotFound();
            }
            return View(cONTACT);
        }

        // GET: contact/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: contact/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,NAME,TELEPHONE,EMAIL,SUBJECTS,MESSAAGE,CURRENTTIME")] CONTACT cONTACT)
        {
            if (ModelState.IsValid)
            {
                db.CONTACTs.Add(cONTACT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cONTACT);
        }

        // GET: contact/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTACT cONTACT = db.CONTACTs.Find(id);
            if (cONTACT == null)
            {
                return HttpNotFound();
            }
            return View(cONTACT);
        }

        // POST: contact/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,NAME,TELEPHONE,EMAIL,SUBJECTS,MESSAAGE,CURRENTTIME")] CONTACT cONTACT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cONTACT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cONTACT);
        }

        // GET: contact/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CONTACT cONTACT = db.CONTACTs.Find(id);
            if (cONTACT == null)
            {
                return HttpNotFound();
            }
            return View(cONTACT);
        }

        // POST: contact/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CONTACT cONTACT = db.CONTACTs.Find(id);
            db.CONTACTs.Remove(cONTACT);
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
