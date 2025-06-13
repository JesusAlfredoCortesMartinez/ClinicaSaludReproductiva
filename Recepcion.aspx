<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recepcion.aspx.cs" Inherits="ClinicaReproductiva5701.Recepcion" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <style>
    body {
        background-color: pink;
    }
</style>


    <h1>Formulario de Recepción</h1>

    <asp:Label ID="lblNombre_Usuario" runat="server" Text="Nombre de Usuario" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtNombre_Usuario" runat="server" CssClass="form-control" placeholder="Nombre de usuario" Width="100%"></asp:TextBox>

    <asp:Label ID="lblContrasena_Hash" runat="server" Text="Contraseña Hash" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtContrasena_Hash" runat="server" CssClass="form-control" placeholder="Hash de la contraseña" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Registro" runat="server" Text="Fecha de Registro" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Registro" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>

    <asp:Label ID="lblUltimo_Acceso" runat="server" Text="Último Acceso" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtUltimo_Acceso" runat="server" CssClass="form-control" TextMode="Time" Width="100%"></asp:TextBox>

    <asp:Label ID="lblActivo" runat="server" Text="Activo (1 o 0)" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtActivo" runat="server" CssClass="form-control" placeholder="1 para activo, 0 para inactivo" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Paciente" runat="server" Text="ID Paciente" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Paciente" runat="server" CssClass="form-control" placeholder="ID del paciente" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Cita" runat="server" Text="ID Cita" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Cita" runat="server" CssClass="form-control" placeholder="ID de la cita" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Paciente_Existe" runat="server" Text="ID Paciente Existe" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Paciente_Existe" runat="server" CssClass="form-control" placeholder="ID si el paciente ya existe" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Expediente" runat="server" Text="ID Expediente" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Expediente" runat="server" CssClass="form-control" placeholder="ID del expediente" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Recepción" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Recepción" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_Recepcion" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Recepcion"
        OnSelectedIndexChanged="grid_Recepcion_SelectedIndexChanged"
        OnRowDeleting="grid_Recepcion_RowDeleting"
        CssClass="table table-bordered">

        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CommandName="Select" Text="Ver" CssClass="btn btn-info" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="id_Recepcion" HeaderText="ID Recepción" />
            <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre Usuario" />
            <asp:BoundField DataField="Contrasena_Hash" HeaderText="Contraseña Hash" />
            <asp:BoundField DataField="Fecha_Registro" HeaderText="Fecha Registro" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Ultimo_Acceso" HeaderText="Último Acceso" DataFormatString="{0:hh\:mm}" />
            <asp:BoundField DataField="Activo" HeaderText="Activo" />
            <asp:BoundField DataField="Id_Paciente" HeaderText="ID Paciente" />
            <asp:BoundField DataField="Id_Cita" HeaderText="ID Cita" />
            <asp:BoundField DataField="Id_Paciente_Existe" HeaderText="ID Paciente Existe" />
            <asp:BoundField DataField="Id_Expediente" HeaderText="ID Expediente" />
        </Columns>

    </asp:GridView>

</asp:Content>
