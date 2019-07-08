using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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
        [Display (Name= "Número Piso")]
        public int NroPiso { get; set; }
        [Display (Name = "Edificio")]
        public string EdificioNombre { get; set; }

        public Edificio EdificioNombreNavigation { get; set; }
        public ICollection<Instrumento> Instrumento { get; set; }
    }
}
