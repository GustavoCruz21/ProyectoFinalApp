using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoFinalModel.UsuarioDAL
{
    public interface IClienteDAL
    {
        List<Cliente> ObtenerClientes();

        Cliente Obtener(int idCliente);

        void AgregarCliente(Cliente cliente, Medidor medidor);


        void EliminarCliente(int idcliente);
    }
}
