<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarClientes.aspx.cs" Inherits="ProyectoFinalWeb.MostrarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
     <br />
    <div style="text-align: center;">
        <h3>Consulta de datos</h3>
    </div>
    <br />
    
    <body style="background-color: burlywood;">
        <div style="text-align: center;">
            <div class="container" style="text-align: center;">
                <asp:GridView ID="grillaClientes"
                    CssClass="table table-dark table-hover"
                    AutoGenerateColumns="false"
                    ShowHeaderWhenEmpty ="true"
                    EmptyDataText="No hay registros"
                    runat ="server">
                    <Columns>

                        <asp:BoundField HeaderText="Rut" DataField="RutCliente" />
                        <asp:BoundField HeaderText="Nombre" DataField="NombreCliente" />               
                        <asp:BoundField HeaderText="Correo" DataField="CorreoCliente" />
                        <asp:BoundField HeaderText="Nro Medidor" DataField="Medidor.NroMedidor" />
                        <asp:BoundField HeaderText="Fecha y Hora Medidor" DataField="Medidor.FechaMedidor" />
                        <asp:BoundField HeaderText="Valor Consumo Medidor" DataField="Medidor.ValorConsumo" />
                        
                    </Columns>
                </asp:GridView>
            </div>
        </div>        
    </body>
   
</asp:Content>
