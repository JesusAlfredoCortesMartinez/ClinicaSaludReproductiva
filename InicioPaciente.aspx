<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InicioPaciente.aspx.cs" Inherits="ClinicaReproductiva5701.InicioPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            margin: 40px auto;
            padding: 30px;
            max-width: 900px;
            background-color: #fbd1e0;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .welcome {
            font-size: 26px;
            font-weight: bold;
            color: #6b0f1a;
            text-align: center;
            margin-bottom: 30px;
        }

        .content-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            align-items: flex-start;
        }

        .img-section, .info-section {
            flex: 1 1 300px;
        }

        .img-section img {
            width: 100%;
            border-radius: 10px;
        }

        .info-section p {
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }

        .info-section h3 {
            margin-top: 20px;
            color: #d6336c;
        }

        .action-btn, .logout-btn {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
        }

        .action-btn {
            background-color: #d6336c;
        }

        .logout-btn {
            background-color: #dc3545;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .action-btn, .logout-btn {
                width: 100%;
            }
        }
    </style>

    <div class="container">
        <asp:Label ID="lblBienvenida" runat="server" CssClass="welcome"></asp:Label>

        <div class="content-flex">
            <div class="img-section">
                <img src="imagenes/Bienvenida.png" alt="Consulta" />
            </div>

            <div class="info-section">
                <p><strong>Cita</strong><br />Muestra sus citas programadas.</p>
                <asp:Button ID="btnCita" runat="server" Text="Ir a Citas" CssClass="action-btn" OnClick="btnCita_Click" />

                <p><strong>Pago</strong><br />Consulta pagos realizados por sus tratamientos.</p>
                <asp:Button ID="btnPago" runat="server" Text="Ir a Pagos" CssClass="action-btn" OnClick="btnPago_Click" />

                <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar sesión" CssClass="logout-btn" OnClick="btnCerrarSesion_Click" />
            </div>
        </div>
    </div>
</asp:Content>
