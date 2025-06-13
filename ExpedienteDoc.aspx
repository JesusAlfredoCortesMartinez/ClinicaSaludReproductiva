<%@ Page Title="Tabla Expedientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExpedienteDoc.aspx.cs" Inherits="ClinicaReproductiva5701.ExpedienteDoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
      
<style>
    body {
        background-color: pink;
    }
                .gridview-estilo {
    border-collapse: collapse;
    width: 100%;
    font-family: Arial, sans-serif;
}

.gridview-estilo th {
    background-color: #cccccc; /* gris */
    color: black;
    padding: 10px;
    text-align: left;
}

.gridview-estilo td {
    background-color: white;
    padding: 10px;
    color: black;
}

.gridview-estilo tr:nth-child(even) td {
    background-color: #f2f2f2; /* gris claro */
}

.gridview-estilo, .gridview-estilo th, .gridview-estilo td {
    border: 1px solid #ccc;
}
</style>
    <div style="background-color: pink; padding: 20px;">
        <h2>Tabla de Expedientes</h2>

        <asp:GridView ID="gvExpedientes" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Expediente" OnRowCommand="gvExpedientes_RowCommand" HeaderStyle-BackColor="#cccccc" HeaderStyle-ForeColor="Black" RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f2f2f2" CssClass="gridview-estilo" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvExpedientes_PageIndexChanging">
            <Columns>
                <asp:ButtonField Text="Ver" CommandName="Ver" ButtonType="Button" />
                <asp:BoundField DataField="Id_Expediente" HeaderText="ID Expediente" ReadOnly="True" />
                <asp:BoundField DataField="Historial_Clinico" HeaderText="Historial Clínico" />
                <asp:BoundField DataField="Id_Paciente" HeaderText="ID Paciente" />
                <asp:BoundField DataField="Id_Medico" HeaderText="ID Médico" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" BackColor="Green" ForeColor="White" OnClick="btnRegresar_Click" />
    </div>
</asp:Content>

