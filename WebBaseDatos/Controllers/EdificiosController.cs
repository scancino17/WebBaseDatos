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

        private NpgsqlConnection dbConnection;

        public EdificiosController()  => dbConnection = Connection.Instance.dbConnection;
        
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
                NpgsqlCommand command = new NpgsqlCommand(query, dbConnection);
                command.ExecuteNonQuery();
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
                var command = new NpgsqlCommand(query, dbConnection);
                command.ExecuteNonQuery();
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
            var command = new NpgsqlCommand(query, dbConnection);
            command.ExecuteNonQuery();
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
            NpgsqlCommand command = new NpgsqlCommand(query, dbConnection);
            DataTable table = new DataTable();
            NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(command);
            adapter.Fill(table);
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
            NpgsqlCommand command = new NpgsqlCommand(query, dbConnection);
            NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(command);
            DataTable table = new DataTable();
            try
            {
                adapter.Fill(table);
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
