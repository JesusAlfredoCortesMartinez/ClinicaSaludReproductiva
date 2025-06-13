<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados_Laboratorio.aspx.cs" Inherits="ClinicaReproductiva5701.Resultados_Laboratorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario Resultados Laboratorio</h1>

<!-- Id Resultados -->
<asp:Label ID="lblId_Resultados" runat="server" Text="Id Resultados *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtId_Resultados" runat="server" CssClass="form-control" placeholder="Ingresa el Id de los resultados del paciente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvIdResultados" runat="server" ControlToValidate="txtId_Resultados" ErrorMessage="<br/>El Id Resultados es obligatorio" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Tipo de Estudio -->
<asp:Label ID="lblTipo_Estudio" runat="server" Text="Tipo de Estudio *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtTipo_Estudio" runat="server" CssClass="form-control" placeholder="Ingresa el Tipo de Estudio del Paciente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvTipoEstudio" runat="server" ControlToValidate="txtTipo_Estudio" ErrorMessage="<br/>El Tipo de Estudio es obligatorio" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Id Paciente -->
<asp:Label ID="lblId_Paciente" runat="server" Text="Id del Paciente *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtId_Paciente" runat="server" CssClass="form-control" placeholder="Ingresa el Id del Paciente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvIdPaciente" runat="server" ControlToValidate="txtId_Paciente" ErrorMessage="<br/>El Id del Paciente es obligatorio" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Id Laboratorista -->
<asp:Label ID="lblID_Laboratorista" runat="server" Text="Id Laboratorista *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtID_Laboratorista" runat="server" CssClass="form-control" placeholder="Ingresa el Id del laboratorista que te atendió"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvIdLaboratorista" runat="server" ControlToValidate="txtID_Laboratorista" ErrorMessage="<br/>El Id del Laboratorista es obligatorio" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Resultados -->
<asp:Label ID="lblResultados" runat="server" Text="Resultados *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtResultados" runat="server" CssClass="form-control" placeholder="Ingresa los resultados del paciente"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvResultados" runat="server" ControlToValidate="txtResultados" ErrorMessage="<br/>Los Resultados son obligatorios" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Fecha -->
<asp:Label ID="lblfecha" runat="server" Text="Fecha *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtfecha" runat="server" CssClass="form-control" TextMode="Date" placeholder="Ingresa la Fecha en que fue atendido"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="txtfecha" ErrorMessage="<br/>La Fecha es obligatoria" ForeColor="Red" Display="Dynamic" />

<br /><br />

<!-- Botones -->
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Resultados" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Resultados" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<br /><br />

<!-- Grid -->
<asp:GridView ID="grid_Resultados_Laboratorio" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Resultados" OnSelectedIndexChanged="grid_Resultados_Laboratorio_SelectedIndexChanged" OnRowDeleting="grid_Resultados_Laboratorio_RowDeleting">
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

        <asp:BoundField DataField="Id_Resultados" HeaderText="Id Resultados" />
        <asp:BoundField DataField="Tipo_Estudio" HeaderText="Tipo Estudio" />
        <asp:BoundField DataField="Id_Paciente" HeaderText="Id Paciente" />
        <asp:BoundField DataField="ID_Laboratorista" HeaderText="Id Laboratorista" />
        <asp:BoundField DataField="Resultados" HeaderText="Resultados" />
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" />

    </Columns>
</asp:GridView>

</asp:Content>
