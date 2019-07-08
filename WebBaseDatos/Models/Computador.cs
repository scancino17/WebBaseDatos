using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Computador
    {
        public int Id { get; set; }
        public double? Ram { get; set; }
        public string Marca { get; set; }
        public string Procesador { get; set; }
        public string Rom { get; set; }

        public Instrumento IdNavigation { get; set; }
    }
}
