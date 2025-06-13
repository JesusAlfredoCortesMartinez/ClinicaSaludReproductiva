<%@ Page Title="Formulario Citas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForCitas.aspx.cs" Inherits="ClinicaReproductiva5701.ForCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.5);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .close {
            color: red;
            float: right;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
        }
    </style>

    <script type="text/javascript">
        function mostrarModal(mensaje) {
            var modal = document.getElementById("miModal");
            var mensajeTexto = document.getElementById("modalMensaje");
            mensajeTexto.innerText = mensaje;
            modal.style.display = "block";
        }

        function cerrarModal() {
            document.getElementById("miModal").style.display = "none";
        }

        window.onload = function () {
            var mensaje = '<%= lblMensaje.Text %>';
            if (mensaje && mensaje.trim() !== '') {
                mostrarModal(mensaje);
            }
        };
    </script>

    <!-- Modal -->
    <div id="miModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="cerrarModal()">&times;</span>
            <p id="modalMensaje"></p>
        </div>
    </div>

    <!-- Label oculto -->
    <asp:Label ID="lblMensaje" runat="server" Visible="false" />

    <div style="background-color: pink; padding: 20px;">
        <h2>Formulario Citas</h2>

        <asp:TextBox ID="txtIdCita" runat="server" placeholder="ID cita" ReadOnly="True" /><br /><br />
        <asp:TextBox ID="txtFecha" runat="server" placeholder="Fecha (yyyy-mm-dd)" TextMode="Date" /><br /><br />
        <asp:TextBox ID="txtHora" runat="server" placeholder="Hora (HH:mm)" TextMode="Time" /><br /><br />
        <asp:TextBox ID="txtMotivo" runat="server" placeholder="Motivo" /><br /><br />
        <asp:TextBox ID="txtIdPaciente" runat="server" placeholder="ID paciente" /><br /><br />
        <asp:TextBox ID="txtIdMedico" runat="server" placeholder="ID médico" /><br /><br />
        <asp:TextBox ID="txtIdConsultorio" runat="server" placeholder="ID consultorio" /><br /><br />

        <!-- ComboBox de servicios -->
        <asp:DropDownList ID="ddlServicios" runat="server">
            <asp:ListItem Text="Seleccione un servicio..." Value="" />
            <asp:ListItem Text="Inseminación Artificial (IIU) - $12,000 – $25,000" Value="IIU" />
            <asp:ListItem Text="Fecundación In Vitro (FIV) - $89,000 – $149,000" Value="FIV" />
            <asp:ListItem Text="ICSI (inyección espermática) - $15,000 – $25,000 (adicional)" Value="ICSI" />
            <asp:ListItem Text="DGP (diagnóstico genético) - $40,000 – $60,000 (adicional)" Value="DGP" />
            <asp:ListItem Text="Ovodonación - $120,000 – $200,000" Value="Ovodonacion" />
            <asp:ListItem Text="Criopreservación de embriones - $10,000 – $20,000 (adicional)" Value="Criopreservacion" />
            <asp:ListItem Text="Congelación de óvulos o semen - $15,000 – $30,000" Value="Congelacion" />
            <asp:ListItem Text="Tratamiento hormonal (mujer) - $8,000 – $30,000 por ciclo" Value="Hormonal" />
            <asp:ListItem Text="Evaluación masculina básica - $2,000 – $6,000" Value="EvalBasica" />
            <asp:ListItem Text="Estudios masculinos especializados - $10,000 – $25,000" Value="EvalEspecializada" />
            <asp:ListItem Text="Cirugía por infertilidad masculina - $20,000 – $60,000" Value="Cirugia" />
            <asp:ListItem Text="Terapia psicológica (opcional) - $500 – $1,200 por sesión" Value="Terapia" />
        </asp:DropDownList><br /><br />

        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" BackColor="DodgerBlue" ForeColor="White" />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar cita" OnClick="btnActualizar_Click" BackColor="Blue" ForeColor="White" />
        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" BackColor="Red" ForeColor="White" />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" BackColor="Green" ForeColor="White" />
    </div>
</asp:Content>
