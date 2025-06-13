<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Paciente_Nuevo_Usuario.aspx.cs" Inherits="ClinicaReproductiva5701.Paciente_Nuevo_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Formulario de paciente nuevo</h2>
    <div style="background-color: #fbb6c2; padding: 20px; border: 2px solid red; width: 400px;">
        <label>Nombre *</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />

        <label>Apellido Paterno *</label>
        <asp:TextBox ID="txtApellidoP" runat="server" CssClass="form-control" />

        <label>Apellido Materno</label>
        <asp:TextBox ID="txtApellidoM" runat="server" CssClass="form-control" />

        <label>Fecha de nacimiento *</label>
        <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />

        <label>Sexo *</label>
        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
            <asp:ListItem Text="Seleccione..." Value="" />
            <asp:ListItem Text="Masculino" Value="M" />
            <asp:ListItem Text="Femenino" Value="F" />
        </asp:DropDownList>

        <label>Teléfono</label>
        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" />

        <label>CURP *</label>
        <asp:TextBox ID="txtCURP" runat="server" CssClass="form-control" />

        <label>Correo</label>
        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" />

        <label>Especialidad Deseada</label>
        <asp:TextBox ID="txtEspecialidad" runat="server" CssClass="form-control" />

        <br />
        <asp:Button ID="btn_Agregar" runat="server" CssClass="btn btn-primary" Text="Crear Paciente" OnClick="btn_Agregar_Click" />
        <asp:Button ID="btn_Regresar" runat="server" CssClass="btn btn-danger" Text="Regresar" PostBackUrl="~/Default.aspx" />
    </div>
</asp:Content>
