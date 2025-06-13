<%@ Page Title="Tabla Prescripciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PrescripcionesDoc.aspx.cs" Inherits="ClinicaReproductiva5701.PrescripcionesDoc" %>

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
        <h2>Tabla de Prescripciones Médicas</h2>

        <asp:GridView ID="gvPrescripciones" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Prescripcion" OnRowCommand="gvPrescripciones_RowCommand" HeaderStyle-BackColor="#cccccc" HeaderStyle-ForeColor="Black" RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f2f2f2" CssClass="gridview-estilo">
            <Columns>
                <asp:ButtonField Text="Ver" CommandName="Ver" ButtonType="Button" />
                <asp:BoundField DataField="Id_Prescripcion" HeaderText="ID Prescripción" />
                <asp:BoundField DataField="Id_Expediente" HeaderText="ID Expediente" />
                <asp:BoundField DataField="Id_Medico" HeaderText="ID Médico" />
                <asp:BoundField DataField="Id_Tratamiento" HeaderText="ID Tratamiento" />
                <asp:BoundField DataField="Fecha_Prescripcion" HeaderText="Fecha de Prescripción" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Fecha_Inicio" HeaderText="Fecha de Inicio" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Fecha_Fin" HeaderText="Fecha de Fin" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" BackColor="Green" ForeColor="White" OnClick="btnRegresar_Click" />
    </div>
</asp:Content>
