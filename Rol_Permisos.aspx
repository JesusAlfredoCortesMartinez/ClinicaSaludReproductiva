<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rol_Permisos.aspx.cs" Inherits="ClinicaReproductiva5701.Rol_Permisos" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
    body {
        background-color: pink;
    }
</style>


    <h1>Asignación de Permisos a Roles</h1>

    <asp:Label ID="lblRol" runat="server" Text="Rol:" CssClass="badge" Font-Size="Large" Style="color: black;" />
    <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-control" Width="100%" />

    <asp:Label ID="lblPermiso" runat="server" Text="Permiso:" CssClass="badge" Font-Size="Large" Style="color: black;" />
    <asp:DropDownList ID="ddlPermiso" runat="server" CssClass="form-control" Width="100%" />

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Asignar Permiso" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

    <asp:GridView ID="grid_RolPermisos" runat="server" AutoGenerateColumns="False"
        DataKeyNames="Id_Rol,Id_Permiso"
        OnSelectedIndexChanged="grid_RolPermisos_SelectedIndexChanged"
        OnRowDeleting="grid_RolPermisos_RowDeleting"
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
            <asp:BoundField DataField="Id_Rol" HeaderText="ID Rol" />
            <asp:BoundField DataField="NombreRol" HeaderText="Rol" />
            <asp:BoundField DataField="Id_Permiso" HeaderText="ID Permiso" />
            <asp:BoundField DataField="NombrePermiso" HeaderText="Permiso" />
        </Columns>

    </asp:GridView>

</asp:Content>
