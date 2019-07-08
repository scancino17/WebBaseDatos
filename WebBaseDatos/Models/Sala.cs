using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Sala
    {
        public Sala()
        {
            Instrumento = new HashSet<Instrumento>();
        }

        public string Nombre { get; set; }
        public int Capacidad { get; set; }
        public int NroPiso { get; set; }
        public string EdificioNombre { get; set; }

        public Edificio EdificioNombreNavigation { get; set; }
        public ICollection<Instrumento> Instrumento { get; set; }
    }
}
