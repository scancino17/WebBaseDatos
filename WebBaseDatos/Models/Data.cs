using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Data
    {
        public int Id { get; set; }
        public string Modelo { get; set; }

        public Instrumento IdNavigation { get; set; }
    }
}
