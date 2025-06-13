<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Laboratorista.aspx.cs" Inherits="ClinicaReproductiva5701.Laboratorista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Laboratoristas</h1>

<!-- Nombre -->
<asp:Label ID="lblNombre" runat="server" Text="Nombre *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresa el Nombre del Laboratorista"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>El nombre es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Teléfono -->
<asp:Label ID="lblTelefono" runat="server" Text="Teléfono *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Ingresa el Teléfono del Laboratorista"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="<br/>El teléfono es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Correo -->
<asp:Label ID="lblCorreo" runat="server" Text="Correo *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingresa el Correo del Laboratorista"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="<br/>El correo es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="<br/>Correo electrónico inválido" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Botones -->
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Laboratorista" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Laboratorista" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<br /><br />

<!-- Grid -->
<asp:GridView ID="grid_Laboratorista" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Laboratorista" OnSelectedIndexChanged="grid_Laboratorista_SelectedIndexChanged" OnRowDeleting="grid_Laboratorista_RowDeleting">
    <Columns>

        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn btn-info" />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger" />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="ID_Laboratorista" HeaderText="Id Laboratorista" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
        <asp:BoundField DataField="Correo" HeaderText="Correo" />

    </Columns>
</asp:GridView>

</asp:Content>
