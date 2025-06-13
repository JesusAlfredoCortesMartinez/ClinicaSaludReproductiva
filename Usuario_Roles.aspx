<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario_Roles.aspx.cs" Inherits="ClinicaReproductiva5701.Usuario_Roles" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    body {
        background-color: pink;
    }
</style>


    <h1>Formulario de Usuario - Roles</h1>

    <asp:Label ID="lblId_Recepcion" runat="server" Text="ID Recepción" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Recepcion" runat="server" CssClass="form-control" placeholder="ID Recepción" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Rol" runat="server" Text="ID Rol" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Rol" runat="server" CssClass="form-control" placeholder="ID Rol" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Asignacion" runat="server" Text="Fecha de Asignación" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Asignacion" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD" TextMode="Date" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Asignación" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Asignación" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_UsuarioRoles" runat="server" AutoGenerateColumns="False"
        DataKeyNames="Id_Recepcion,Id_Rol"
        OnSelectedIndexChanged="grid_UsuarioRoles_SelectedIndexChanged"
        OnRowDeleting="grid_UsuarioRoles_RowDeleting"
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
            <asp:BoundField DataField="Id_Recepcion" HeaderText="ID Recepción" />
            <asp:BoundField DataField="Id_Rol" HeaderText="ID Rol" />
            <asp:BoundField DataField="Fecha_Asignacion" HeaderText="Fecha de Asignación" DataFormatString="{0:yyyy-MM-dd}" />
        </Columns>

    </asp:GridView>

</asp:Content>

