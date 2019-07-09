using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Npgsql;
using WebBaseDatos.Controllers;

namespace WebBaseDatos.View.Salas
{
    public class SalasController : Controller
    {
        private Connection db;

        public SalasController() => db = Connection.Instance;
        

        // GET: Edificios
        public async Task<IActionResult> Index(string id)
        {
            string query = "Select * from \"Sala\"";

            if (!String.IsNullOrEmpty(id))
            {
                if (String.Equals(id, "Nombre") || String.Equals(id, "Capacidad") || String.Equals(id, "nroPiso"))
                    query = query + " order by \"" + id + "\";";
                else
                    query = query + ";";
            }
            else
            {
                query = query + ";";
            }
            return View(GetListSalas(query));
        }

        // GET: Edificios/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sala = SeleccionarSala(id);

            if (sala == null)
            {
                return NotFound();
            }

            return View(sala);
        }

        // GET: Edificios/Create
        public IActionResult Create(string id)
        {
            if (!String.IsNullOrEmpty(id))
            {
                ViewData["Edificio"] = id;
            }
            else
            {
                var edificios = GetListEdificios("select * from \"Edificio\" order by \"Nombre\";");
                ViewData["Edificios"] = edificios;
            }
            return View();
        }

        // POST: Edificios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Nombre,Capacidad,NroPiso,EdificioNombre")] Sala sala)
        {
            if (ModelState.IsValid)
            {
                string query = "INSERT INTO \"Sala\" (\"Nombre\", \"Capacidad\", \"nroPiso\", \"Edificio_nombre\") VALUES ('" + sala.Nombre + "', '" + sala.Capacidad + "', '" + sala.NroPiso + "', '" + sala.EdificioNombre + "');";
                db.ExecuteQuery(query);
                return RedirectToAction(nameof(Index));
            }
            return View(sala);
        }

        // GET: Edificios/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sala = SeleccionarSala(id);

            if (sala == null)
            {
                return NotFound();
            }
            return View(sala);
        }

        // POST: Edificios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Nombre,Capacidad,NroPiso,EdificioNombre")] Sala sala)
        {

            if (id != sala.Nombre)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                string query = "UPDATE \"Sala\" SET \"Capacidad\" ='" + sala.Capacidad + "', \"nroPiso\"='" + sala.NroPiso + "' WHERE \"Nombre\" = '" + sala.Nombre + "';";
                db.ExecuteQuery(query);
                return RedirectToAction(nameof(Index));
            }
            return View(sala);
        }

        // GET: Edificios/Delete/5
        public async Task<IActionResult> Delete(string id)
        {

            if (id == null)
            {
                return NotFound();
            }

            var sala = SeleccionarSala(id);

            if (sala == null)
            {
                return NotFound();
            }

            return View(sala);
        }

        // POST: Edificios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            string query = "DELETE FROM \"Sala\" WHERE \"Nombre\"= '" + id + "';";
            db.ExecuteQuery(query);
            return RedirectToAction(nameof(Index));
        }

        private Sala SeleccionarSala(string id)
        {
            string query = "Select * from \"Sala\" where \"Nombre\" = '" + id + "';";
            DataTable table = db.ExecuteQuery(query);
            List<Sala> listaSalas = new List<Sala>();
            listaSalas = (from DataRow dr in table.Rows
                          select new Sala()
                          {
                              Nombre = dr["Nombre"].ToString(),
                              Capacidad = Convert.ToInt32(dr["Capacidad"].ToString()),
                              NroPiso = Convert.ToInt32(dr["nroPiso"].ToString()),
                              EdificioNombre = dr["Edificio_nombre"].ToString()
                          }).ToList();

            return listaSalas[0];
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
    }
}