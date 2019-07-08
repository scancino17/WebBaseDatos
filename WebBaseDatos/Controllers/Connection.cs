using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebBaseDatos.Controllers
{
   
    public class Connection
    {
        private readonly static Connection _instance = new Connection();
        //Cambiar para db
        private readonly string connectionString = "Server=localhost;Port=5432;DataBase=tarea;Uid=postgres;Pwd=postgres";
        public NpgsqlConnection dbConnection { get; }

        private Connection()
        {
            dbConnection = new NpgsqlConnection(connectionString);
            dbConnection.Open();
        }

        public static Connection Instance
        {
            get => _instance;
        }

    }

   
}
