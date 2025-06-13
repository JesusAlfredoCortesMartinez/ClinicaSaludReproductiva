<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="ClinicaReproductiva5701.Roles" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
    body {
        background-color: pink;
    }
</style>


    <h1>Formulario de Roles</h1>

    <asp:Label ID="lblNombre" runat="server" Text="Nombre del Rol" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Nombre del rol" Width="100%"></asp:TextBox>

    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción del Rol" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Descripción del rol" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Rol" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Rol" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_Roles" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Rol"
        OnSelectedIndexChanged="grid_Roles_SelectedIndexChanged"
        OnRowDeleting="grid_Roles_RowDeleting"
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
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
        </Columns>

    </asp:GridView>

</asp:Content>

