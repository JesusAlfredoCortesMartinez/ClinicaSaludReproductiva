<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorialDoc.aspx.cs" Inherits="ClinicaReproductiva5701.HistorialDoc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
    body {
        background-color: pink;
        margin: 0;
        padding: 0;
    }

    .contenedor {
        background-color: pink;
        padding: 20px;
        box-sizing: border-box;
    }

    h2 {
        text-align: center;
    }

    .tabla-responsiva {
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
    }

    .gridview-estilo {
        border-collapse: collapse;
        width: 100%;
        font-family: Arial, sans-serif;
        min-width: 800px; /* Para evitar que las celdas se compriman demasiado */
    }

    .gridview-estilo th {
        background-color: #cccccc;
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
        background-color: #f2f2f2;
    }

    .gridview-estilo, .gridview-estilo th, .gridview-estilo td {
        border: 1px solid #ccc;
    }

    .btn-regresar {
        margin-top: 20px;
        background-color: green;
        color: white;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-weight: bold;
        box-shadow: 2px 2px #444;
    }

    .btn-regresar:hover {
        opacity: 0.85;
    }

    @media (max-width: 576px) {
        h2 {
            font-size: 1.2rem;
        }

        .contenedor {
            padding: 10px;
        }
    }
</style>

<div class="contenedor">
    <h2>Tabla Historial Medico</h2>

    <!-- 🧠 Esto permite scroll horizontal en móviles sin romper el diseño -->
    <div class="tabla-responsiva">
        <asp:GridView ID="gvHistorial" runat="server" AutoGenerateColumns="False" DataKeyNames="IdHistorial" OnRowCommand="gvHistorial_RowCommand" HeaderStyle-BackColor="#cccccc" HeaderStyle-ForeColor="Black" RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f2f2f2" CssClass="gridview-estilo">
            <Columns>
                <asp:ButtonField Text="Ver" CommandName="Ver" ButtonType="Button" />
                <asp:BoundField DataField="IdHistorial" HeaderText="Id Historial" />
                <asp:BoundField DataField="IdPaciente" HeaderText="Id Paciente" />
                <asp:BoundField DataField="FechaConsulta" HeaderText="Fecha Consulta" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Sintomas" HeaderText="Sintomas" />
                <asp:BoundField DataField="Diagnostico" HeaderText="Dignostico" />
                <asp:BoundField DataField="TratamientoSugerido" HeaderText="Tratamiento Sugerido" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                <asp:BoundField DataField="IdMedico" HeaderText="Id Medico" />
                <asp:BoundField DataField="Psicologo" HeaderText="Psicologo" />
            </Columns>
        </asp:GridView>
</div>
        <br />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" BackColor="Green" ForeColor="White" OnClick="btnRegresar_Click" />
    </div>

</asp:Content>
