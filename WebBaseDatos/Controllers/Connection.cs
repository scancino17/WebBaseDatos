using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
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

        public DataTable ExecuteQuery(string query)
        {
            var command = new NpgsqlCommand(query, dbConnection);
            DataTable table = new DataTable();
            NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(command);
            adapter.Fill(table);
            command.ExecuteNonQuery();
            return table;
        }
        public static Connection Instance
        {
            get => _instance;
        }

    }

   
}
