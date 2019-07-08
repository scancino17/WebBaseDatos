using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Persona
    {
        public Persona()
        {
            Arriendo = new HashSet<Arriendo>();
        }

        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string ApellidoP { get; set; }
        public string ApellidoM { get; set; }

        public Profesor Profesor { get; set; }
        public Secretaria Secretaria { get; set; }
        public ICollection<Arriendo> Arriendo { get; set; }
    }
}
