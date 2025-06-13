<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForUsuario.aspx.cs" Inherits="ClinicaReproductiva5701.ForUsuario" %>
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
<asp:Label ID="Label1" runat="server" Visible="false" />

<div style="background-color: pink; padding: 20px; border-radius: 10px;">
    <h2>Formulario Usuarios</h2>

    <asp:TextBox ID="txtIdUsuario" runat="server" placeholder="ID Usuario" ReadOnly="true" /><br /><br />
    <asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario" /><br /><br />
    <asp:TextBox ID="txtContrasenaHash" runat="server" placeholder="Contraseña Hash" /><br /><br />
    <asp:TextBox ID="txtRol" runat="server" placeholder="Rol" /><br /><br />
    <asp:TextBox ID="txtActivo" runat="server" placeholder="Activo" /><br /><br />
    <asp:TextBox ID="txtFechaRegistro" runat="server" placeholder="Fecha Registro" /><br /><br />
    
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" BackColor="#007bff" ForeColor="White" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" BackColor="#17a2b8" ForeColor="White" />
    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" BackColor="#dc3545" ForeColor="White" />
    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" BackColor="#28a745" ForeColor="White" />

    <br /><br />
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Green" Font-Bold="True"></asp:Label>
</div>
</asp:Content>
