<%@ Page Title="Tabla Detalle de Tratamientos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleDoc.aspx.cs" Inherits="ClinicaReproductiva5701.DetalleDoc" %>

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
        <h2>Tabla de Detalles de Tratamientos</h2>

        <asp:GridView ID="gvDetalles" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Detalle_Tratamiento" OnRowCommand="gvDetalles_RowCommand" HeaderStyle-BackColor="#cccccc" HeaderStyle-ForeColor="Black" RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f2f2f2" CssClass="gridview-estilo">
            <Columns>
                <asp:ButtonField Text="Ver" CommandName="Ver" ButtonType="Button" />
                <asp:BoundField DataField="Id_Detalle_Tratamiento" HeaderText="ID Detalle" />
                <asp:BoundField DataField="Id_Tratamiento" HeaderText="ID Tratamiento" />
                <asp:BoundField DataField="Frecuencia" HeaderText="Frecuencia" />
                <asp:BoundField DataField="Duracion_Dias" HeaderText="Duración (Días)" />
                <asp:BoundField DataField="Instrucciones_Especificas" HeaderText="Instrucciones Específicas" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" BackColor="Green" ForeColor="White" OnClick="btnRegresar_Click" />
    </div>
</asp:Content>

