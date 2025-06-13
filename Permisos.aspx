<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Permisos.aspx.cs" Inherits="ClinicaReproductiva5701.Permisos" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
    body {
        background-color: pink;
    }
</style>

    <h1>Formulario de Permisos</h1>

    <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresa el nombre del permiso" Width="100%"></asp:TextBox>

    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Describe el permiso" Width="100%"></asp:TextBox>

    <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" placeholder="Ingresa el código" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Permiso" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Permiso" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_Permisos" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Permiso"
        OnSelectedIndexChanged="grid_Permisos_SelectedIndexChanged"
        OnRowDeleting="grid_Permisos_RowDeleting"
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
            <asp:BoundField DataField="Id_Permiso" HeaderText="ID Permiso" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="Codigo" HeaderText="Código" />
        </Columns>

    </asp:GridView>

</asp:Content>

