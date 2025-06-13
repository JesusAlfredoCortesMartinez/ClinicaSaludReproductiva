<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Diagnostico.aspx.cs" Inherits="ClinicaReproductiva5701.Diagnostico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Diagnostico</h1>

<asp:Label ID="lblDescripcion" runat="server" Text="Descripcion *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Ingresa la Descripcion"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="<br/>La Descripcion es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblFecha" runat="server" Text="Fecha  *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" TextMode="Date" placeholder="Ingresa la Fecha "></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="txtFecha" ErrorMessage="<br/>La fecha es obligatoria" ForeColor="Red" Display="Dynamic" />


        <br />

<asp:Label ID="lblId_Expediente" runat="server" Text="Id_Expediente *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtId_Expediente" runat="server" CssClass="form-control" placeholder="Ingresa el Id_Expediente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Expediente" runat="server" ControlToValidate="txtId_Expediente" ErrorMessage="<br/>El Id_Expediente es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Expediente" runat="server" ControlToValidate="txtId_Expediente" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Expediente" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Expediente" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Diagnostico" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Diagnostico" OnSelectedIndexChanged="grid_Diagnostico_SelectedIndexChanged" OnRowDeleting="grid_Diagnostico_RowDeleting"> 
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
        <asp:BoundField DataField="Id_Diagnostico" HeaderText="Id_Diagnostico" />
        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
        <asp:BoundField DataField="Id_Expediente" HeaderText="Id_Expediente" />
        
        
    </Columns>
</asp:GridView>
</asp:Content>
