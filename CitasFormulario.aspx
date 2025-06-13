<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CitasFormulario.aspx.cs" Inherits="ClinicaReproductiva5701.CitasFormulario" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulario de Citas</title>
    <style>
        body {
            background-color: pink;
            font-family: Arial, sans-serif;
        }

        .form-container {
            width: 450px;
            margin: 40px auto;
            padding: 25px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .buttons input {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-crear {
            background-color: #007bff;
            color: white;
        }

        .btn-regresar {
            background-color: #dc3545;
            color: white;
        }

        .btn-pago {
            background-color: #28a745;
            color: white;
        }

        .mensaje {
            text-align: center;
            font-weight: bold;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Tabla Citas</h2>

            <asp:Label ID="lblPaciente" runat="server" CssClass="form-group" />
            <br />
            <br />
            <asp:Label ID="lblMedico" runat="server" CssClass="form-group" />
            <br />
            <br />
            <asp:Label ID="lblFecha" runat="server" CssClass="form-group" />
            <br />
            <br />
            <asp:Label ID="lblHora" runat="server" CssClass="form-group" />

            <div class="form-group">
                <label for="ddlConsultorio">
                <br />
                Consultorio</label>
                <asp:DropDownList ID="ddlConsultorio" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="txtMotivo">Motivo</label>
                <asp:TextBox ID="txtMotivo" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtEstado">Estado de cita</label>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control" Text="Pendiente" ReadOnly="true"></asp:TextBox>
            </div>

            <div class="buttons">
                <asp:Button ID="btnCrearCita" runat="server" Text="Crear cita" CssClass="btn-crear" OnClick="btnCrearCita_Click" />
                <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="btn-regresar" OnClick="btnRegresar_Click" />
                <asp:Button ID="btnPago" runat="server" Text="Pago" CssClass="btn-pago" OnClick="btnPago_Click" />
            </div>

            <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje" />
        </div>
    </form>
</body>
</html>