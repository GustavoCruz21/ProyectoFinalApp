<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarCliente.aspx.cs" Inherits="ProyectoFinalWeb.AgregarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
     <body style="background-color: burlywood;">
        <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white" style="text-align: center;">
                    <h3>Complete el siguiente formulario de ingreso</h3>
                </div>                            
                <div class="card-body" style="background-color: gainsboro;">
                    <br /> 
                    <div style="text-align: center;">
                        <h4>Datos Cliente</h4>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="nombreTxt">Nombre: </label>
                                <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server" ></asp:TextBox>
                            </div>
                           
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="rutTxt">Rut: </label>
                                <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                             
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                             <div class="mb-3">
                                <label for="contrasenaTxt">Contraseña: </label>
                                <asp:TextBox ID="contrasenaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="correoTxt">Correo: </label>
                                <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                    </div>
                                                                       
                    <br />
                    <div style="text-align: center;">
                        <h4>Datos Medidor</h4>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col">
                             <div class="mb-3">
                                <label for="nromedidorTxt">Nro Medidor: </label>
                                <asp:TextBox ID="nromedidorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="valorTxt">Valor Consumo Medidor:</label>
                                <asp:TextBox ID="valorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   
                    <div class="mb-3" style="text-align: center;">
                        <label for="fechaTxt">Fecha y Hora Medidor:</label>
                        <asp:TextBox ID="fechaTxt" TextMode="DateTimeLocal" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    
                    <br />
                    <div style="text-align: center;">
                        <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-outline-primary" ID="ingresarBtn" Text="Ingresar" />

                    </div>
                    

                </div>
            </div>
        </div>

    </div>

    </body>
</asp:Content>
