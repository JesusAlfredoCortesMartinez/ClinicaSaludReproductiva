<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultorios.aspx.cs" Inherits="ClinicaReproductiva5701.Consultorios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Consultorios</h1>

<asp:Label ID="lblNombre" runat="server" Text="Nombre *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresa el Nombre del Consultorio"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>El nombre es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblUbicacion" runat="server" Text="Ubicacion *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtUbicacion" runat="server" CssClass="form-control" placeholder="Ingresa la ubicacion del Consultorio"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvUbicacion" runat="server" ControlToValidate="txtUbicacion" ErrorMessage="<br/>La ubicacion del consultorio es obligatoria" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revUbicacion" runat="server" ControlToValidate="txtUbicacion" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblDescripcion" runat="server" Text="Descripcion *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Ingresa la descripcion del consultorio"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="<br/>La descripcion es obligatoria" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblActivo" runat="server" Text="Activo *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtActivo" runat="server" CssClass="form-control" placeholder="Ingresa si el consultorio esta activo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvActivo" runat="server" ControlToValidate="txtActivo" ErrorMessage="<br/>Saber si el consultorio esta activo es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revActivo" runat="server" ControlToValidate="txtActivo" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Consultorio" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Consultorio" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Consultorios" runat="server" AutoGenerateColumns="False" DataKeyNames="id_consultorio" OnSelectedIndexChanged="grid_Consultorios_SelectedIndexChanged" OnRowDeleting="grid_Consultorios_RowDeleting"> 
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
        <asp:BoundField DataField="id_consultorio" HeaderText="Id_Consultorio" />
        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="ubicacion" HeaderText="Ubicacion" />
        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
        <asp:BoundField DataField="activo" HeaderText="Activo" />
        
    </Columns>
</asp:GridView>
</asp:Content>
