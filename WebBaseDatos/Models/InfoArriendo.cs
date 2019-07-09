using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebBaseDatos
{
    public partial class InfoArriendo
    {
        [Display (Name = "Nombre")]
        public string Nombres { get; set; }
        [Display(Name = "Apellido Paterno")]
        public string ApellidoP { get; set; }
        [Display(Name = "Materno")]
        public string ApellidoM { get; set; }
        [Display(Name = "Sala")]
        public string Nombre { get; set; }
        [Display(Name = "Edificio")]
        public string EdificioNombre { get; set; }
        [Display(Name = "Año Arriendo")]
        public int Año { get; set; }
        [Display(Name = "Semestre Arriendo")]
        public int Semestre { get; set; }
    }
}
