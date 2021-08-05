using ProyectoFinalModel;
using ProyectoFinalModel.UsuarioDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalWeb
{
    public partial class MostrarClientes : System.Web.UI.Page
    {
        private IClienteDAL clientesDAL = new ClientesDALDB();

        private void cargarGrilla(List<Cliente> clientes)
        {
            this.grillaClientes.DataSource = clientes;
            this.grillaClientes.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla(this.clientesDAL.ObtenerClientes());
            }
        }
    }
}