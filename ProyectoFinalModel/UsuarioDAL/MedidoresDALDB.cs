using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoFinalModel.UsuarioDAL
{
    public class MedidoresDALDB : IMedidorDAL
    {
        private ProyectEntities eventosDB = new ProyectEntities();
        public List<Medidor> ObtenerMedidores()
        {
            return this.eventosDB.Medidors.ToList();
        }
    }
}
