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
    public class FController : Controller
    {
        Connection db;

        public FController() => db = Connection.Instance;

        // GET: F
        public ActionResult Index()
        {
            string query = "Select \"Edificio\".\"Nombre\", count(distinct salas.\"Nombre\")" +
                " as CantidadSalas, sum(salas.\"numinstrumentos\") as CantidadInstrumentos " +
                "from \"Edificio\" inner join(select \"Sala\".\"Nombre\", \"Sala\".\"Edificio_nombre\", " +
                "count(\"Instrumento\".\"id\") as NumInstrumentos from \"Sala\" inner join " +
                "\"Instrumento\" on \"Instrumento\".\"sala_nombre\" = \"Sala\".\"Nombre\" " +
                "group by \"Sala\".\"Nombre\") salas on salas.\"Edificio_nombre\" = " +
                "\"Edificio\".\"Nombre\" group by \"Edificio\".\"Nombre\";";
            return View(GetList(query));
        }

        private IEnumerable<F> GetList(string query)
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

            IEnumerable<F> lista = new List<F>();
            lista = (from DataRow dr in table.Rows
                     select new F()
                     {
                         Nombre = dr["Nombre"].ToString(),
                         NumSala = Convert.ToInt32(dr["cantidadsalas"]),
                         CantInstrumentso = Convert.ToInt32(dr["cantidadinstrumentos"])
                     }).ToList();

            return lista;
        }

    }
}