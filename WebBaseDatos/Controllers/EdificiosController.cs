using System;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebBaseDatos;
using System.Data;
using System.Diagnostics;
using WebBaseDatos.Controllers;

namespace WebBaseDatos.Views.Edificios
{
    public class EdificiosController : Controller
    {

        private Connection db;

        public EdificiosController()  => db = Connection.Instance;
        
        // GET: Edificios
        public async Task<IActionResult> Index(string id)
        {
            string query = "Select * from \"Edificio\"";

            if (!String.IsNullOrEmpty(id))
            {
                if (String.Equals(id, "Nombre") || String.Equals(id, "Color") || String.Equals(id, "Especificación Técnica"))
                    query = query + " order by \"" + id + "\";";
                else
                    query = query + ";";
            } else {
                query = query + ";";
            }
            return View(GetListEdificios(query));
        }

        // GET: Edificios/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var edificio = SeleccionarEdificio(id);

            if (edificio == null)
            {
                return NotFound();
            }

            var salas = GetListSalas("Select * from \"Sala\" where \"Edificio_nombre\" = '" + id + "';");
            ViewData["Salas"] = salas;

            return View(edificio);
        }

        // GET: Edificios/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Edificios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Nombre,Color,EspecificaciónTécnica")] Edificio edificio)
        {
            if (ModelState.IsValid)
            {
                string query = "INSERT INTO \"Edificio\" (\"Nombre\", \"Color\", \"Especificación Técnica\") VALUES ('" + edificio.Nombre + "', '" + edificio.Color +"', '" + edificio.EspecificaciónTécnica + "');";
                db.ExecuteQuery(query);
                return RedirectToAction(nameof(Index));
            }
            return View(edificio);
        }

        // GET: Edificios/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var edificio = SeleccionarEdificio(id);

            if (edificio == null)
            {
                return NotFound();
            }
            return View(edificio);
        }

        // POST: Edificios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Nombre,Color,EspecificaciónTécnica")] Edificio edificio)
        {
            
            if (id != edificio.Nombre)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                string query = "UPDATE \"Edificio\" SET \"Color\" ='" + edificio.Color + "', \"Especificación Técnica\"='" + edificio.EspecificaciónTécnica+ "' WHERE \"Nombre\" = '" + edificio.Nombre + "';";
                db.ExecuteQuery(query);
                return RedirectToAction(nameof(Index));
            }
            return View(edificio);
        }

        // GET: Edificios/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            
            if (id == null)
            {
                return NotFound();
            }

            var edificio = SeleccionarEdificio(id);

            if (edificio == null)
            {
                return NotFound();
            }
            
            return View(edificio);
        }

        // POST: Edificios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            string query = "DELETE FROM \"Edificio\" WHERE \"Nombre\"= '" + id + "';";
            db.ExecuteQuery(query);
            return RedirectToAction(nameof(Index));
        }

        private bool EdificioExists(string id)
        {
            //return _context.Edificio.Any(e => e.Nombre == id);
            return true;
        }

        private Edificio SeleccionarEdificio(string id)
        {
            string query = "Select * from \"Edificio\" where \"Nombre\" = '" + id + "';";
            DataTable table = db.ExecuteQuery(query);
            List<Edificio> listaEdificios = new List<Edificio>();
            listaEdificios = (from DataRow dr in table.Rows
                              select new Edificio()
                              {
                                  Nombre = dr["Nombre"].ToString(),
                                  Color = dr["Color"].ToString(),
                                  EspecificaciónTécnica = dr["Especificación Técnica"].ToString()
                              }).ToList();
            return listaEdificios[0];
        }

        private IEnumerable<Edificio> GetListEdificios(string query)
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

            IEnumerable<Edificio> listaEdificios = new List<Edificio>();
            listaEdificios = (from DataRow dr in table.Rows
                              select new Edificio()
                              {
                                  Nombre = dr["Nombre"].ToString(),
                                  Color = dr["Color"].ToString(),
                                  EspecificaciónTécnica = dr["Especificación Técnica"].ToString()
                              }).ToList();

            return listaEdificios;
        }

        private IEnumerable<Sala> GetListSalas(string query)
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

            IEnumerable<Sala> listaSalas = new List<Sala>();
            listaSalas = (from DataRow dr in table.Rows
                          select new Sala()
                          {
                              Nombre = dr["Nombre"].ToString(),
                              Capacidad = Convert.ToInt32(dr["Capacidad"].ToString()),
                              NroPiso = Convert.ToInt32(dr["nroPiso"].ToString()),
                              EdificioNombre = dr["Edificio_nombre"].ToString()
                          }).ToList();

            return listaSalas;
        }
    }
}
