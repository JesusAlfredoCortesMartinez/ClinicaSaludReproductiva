<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Expediente.aspx.cs" Inherits="ClinicaReproductiva5701.Expediente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     
<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Expedientes</h1>

<asp:Label ID="lblHistorial_Clinico" runat="server" Text="Historial_Clinico *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtHistorial_Clinico" runat="server" CssClass="form-control" placeholder="Ingresa el Historial_Clinico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvHistorial_Clinico" runat="server" ControlToValidate="txtHistorial_Clinico" ErrorMessage="<br/>El Historial_Clinico es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revHistorial_Clinico" runat="server" ControlToValidate="txtHistorial_Clinico" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblId_Paciente" runat="server" Text="Id_Paciente *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtId_Paciente" runat="server" CssClass="form-control" placeholder="Ingresa el Id_Paciente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Paciente" runat="server" ControlToValidate="txtId_Paciente" ErrorMessage="<br/>el id del paciente es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Paciente" runat="server" ControlToValidate="txtId_Paciente" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

        <br />

<asp:Label ID="lblId_Medico" runat="server" Text="Id_Medico *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtId_Medico" runat="server" CssClass="form-control" placeholder="Ingresa el Id_Medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Medico" runat="server" ControlToValidate="txtId_Medico" ErrorMessage="<br/>El Id_Medico es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Medico" runat="server" ControlToValidate="txtId_Medico" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Expediente" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Expediente" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Expediente" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Expediente" OnSelectedIndexChanged="grid_Expediente_SelectedIndexChanged" OnRowDeleting="grid_Expediente_RowDeleting"> 
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
        <asp:BoundField DataField="Id_Expediente" HeaderText="Id_Expediente" />
        <asp:BoundField DataField="Historial_Clinico" HeaderText="Historial_Clinico" />
        <asp:BoundField DataField="Id_Paciente" HeaderText="Id_Paciente" />
        <asp:BoundField DataField="Id_Medico" HeaderText="Id_Medico" />
        
        
    </Columns>
</asp:GridView>
</asp:Content>
