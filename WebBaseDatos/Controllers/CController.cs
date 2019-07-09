using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebBaseDatos.Controllers
{
    public class CController : Controller
    {
        Connection db;

        public CController() => db = Connection.Instance;
        // GET: C
        public async Task<IActionResult> Index()
        {
            string query = "Select \"Edificio\".\"Nombre\", sum (\"Sala\".\"Capacidad\") from \"Edificio\" " +
                " inner join \"Sala\" on \"Sala\".\"Edificio_nombre\" = \"Edificio\".\"Nombre\"" +
                " group by \"Edificio\".\"Nombre\" order by \"sum\" desc;"; 
            return View(GetList(query));
        }

        private IEnumerable<C> GetList(string query)
        {
            DataTable table = new DataTable();
            try
            {
                table = db.ExecuteQuery(query);
                Debug.WriteLine("Llenado Exitoso.");
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception: {0}", e);
            }

            IEnumerable<C> lista = new List<C>();
            lista = (from DataRow dr in table.Rows
                              select new C()
                              {
                                  Name = dr["Nombre"].ToString(),
                                  Capacity = Convert.ToInt32(dr["sum"])
                              }).ToList();

            return lista;
        }

        // GET: C/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: C/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: C/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: C/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: C/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: C/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: C/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}