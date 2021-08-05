using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoFinalModel.UsuarioDAL
{
    public class ClientesDALDB : IClienteDAL
    {
        private ProyectEntities eventosDB = new ProyectEntities();
        public void AgregarCliente(Cliente cliente, Medidor medidor)
        {
            this.eventosDB.Clientes.Add(cliente);
            this.eventosDB.Medidors.Add(medidor);
            this.eventosDB.SaveChanges();
        }



        public void EliminarCliente(int idcliente)
        {
            Cliente cliente = this.eventosDB.Clientes.Find(idcliente);

            this.eventosDB.Clientes.Remove(cliente);
            this.eventosDB.SaveChanges();
        }

        public Cliente Obtener(int idCliente)
        {
            return this.eventosDB.Clientes.Find(idCliente);
        }



        public List<Cliente> ObtenerClientes()
        {
            return this.eventosDB.Clientes.ToList();
        }
    }
}
