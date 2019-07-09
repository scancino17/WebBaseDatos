using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace WebBaseDatos.Controllers
{
    public class InfoArriendosController : Controller
    {
        private Connection db;

        public InfoArriendosController() => db = Connection.Instance;

        public IActionResult Index(string where, string value)
        {
            string query = "Select \"Nombres\", \"ApellidoP\", \"ApellidoM\", \"Nombre\", \"Edificio_nombre\", \"año\", \"semestre\" from \"Tiene\""
                         + " inner join \"Sala\" on \"sala_nombre\" = \"Sala\".\"Nombre\""
                         + " inner join \"Arriendo\" on \"arriendo_id\" = \"id\""
                         + " inner join \"Persona\" on \"persona_rut\" = \"rut\"";

            
            if (!String.IsNullOrWhiteSpace(where) && !String.IsNullOrWhiteSpace(value))
            {
                query = query + "where \"" + where + "\" =";
                if (where.Equals("año") || where.Equals("semestre"))
                {
                    query = query + " " + value;
                }
                else
                {
                    query = query + " '" + value + "'"; 
                }
            }

            query = query + ";";
            return View(GetListInfoArriendos(query));
        }

        private IEnumerable<InfoArriendo> GetListInfoArriendos(string query)
        {
            var table = db.ExecuteQuery(query);
            IEnumerable<InfoArriendo> listaInfoArriendos = new List<InfoArriendo>();
            listaInfoArriendos = (from DataRow dr in table.Rows
                                  select new InfoArriendo()
                                  {
                                      Nombres = dr["Nombres"].ToString(),
                                      ApellidoP = dr["ApellidoP"].ToString(),
                                      ApellidoM = dr["ApellidoM"].ToString(),
                                      Nombre = dr["Nombre"].ToString(),
                                      EdificioNombre = dr["Edificio_nombre"].ToString(),
                                      Año = Convert.ToInt32(dr["año"].ToString()),
                                      Semestre = Convert.ToInt32(dr["semestre"].ToString())
                                  }).ToList();

            return listaInfoArriendos;
        }
    }
}