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
    public class EController : Controller
    {
        Connection db;
        public EController() => db = Connection.Instance;
        public ActionResult Index()
        {
            string query = "Select \"Edificio\".\"Nombre\" from \"Edificio\" inner join \"Sala\" on \"Sala\".\"Edificio_nombre\" " +
                "= \"Edificio\".\"Nombre\" group by \"Edificio\".\"Nombre\" having count(Distinct \"nroPiso\") = " +
                "max(\"nroPiso\");";
            return View(GetList(query));
        }

        private List<String> GetList(string query)
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

            List<String> lista = new List<String>();
            foreach (DataRow dr in table.Rows)
                lista.Add(dr.ItemArray[0].ToString());

            return lista;
        }
    }
}