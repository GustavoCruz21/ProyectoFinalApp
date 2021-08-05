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
    public partial class AgregarCliente : System.Web.UI.Page
    {
        private IClienteDAL clienntesDAL = new ClientesDALDB();
        private IMedidorDAL medidoresDAL = new MedidoresDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            cliente.RutCliente = this.rutTxt.Text.Trim();
            cliente.NombreCliente = this.nombreTxt.Text.Trim();
            cliente.ContrasenaCliente = this.contrasenaTxt.Text.Trim();
            cliente.CorreoCliente = this.correoTxt.Text.Trim();
            Medidor medidor = new Medidor();
            medidor.NroMedidor = Convert.ToInt32(this.nromedidorTxt.Text.Trim());
            medidor.FechaMedidor = Convert.ToDateTime(this.fechaTxt.Text.Trim());
            medidor.ValorConsumo = this.valorTxt.Text.Trim();
            this.clienntesDAL.AgregarCliente(cliente, medidor);



            Response.Redirect("MostrarClientes.aspx");
        }
    }
}