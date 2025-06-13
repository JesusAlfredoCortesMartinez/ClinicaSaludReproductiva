<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarioCitas.aspx.cs" Inherits="ClinicaReproductiva5701.CalendarioCitas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendario de Citas</title>
    <style>
        body {
            background-color: pink;
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fbd1e0;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #6b0f1a;
            margin-bottom: 25px;
        }

        .calendar {
            margin: 20px auto;
        }

        .horario-btn {
            margin: 5px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 90px;
            font-weight: bold;
            cursor: pointer;
            font-family: inherit;
        }

        .disponible {
            background-color: #28a745;
            color: white;
        }

        .ocupado {
            background-color: #dc3545;
            color: white;
            cursor: not-allowed;
        }

        .horario-seleccionado {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border: 2px solid #0056b3;
        }

        select {
            padding: 10px;
            border-radius: 6px;
            font-family: inherit;
        }

        .btn-agendar {
            background-color: #007bff;
            color: white;
            padding: 10px 25px;
            border: none;
            font-weight: bold;
            border-radius: 6px;
            margin-top: 20px;
            cursor: pointer;
        }

        .btn-agendar:hover {
            background-color: #0056b3;
        }

        .mensaje {
            margin-top: 15px;
            font-weight: bold;
            color: red;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 20px;
            }

            .horario-btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div class="container">
            <h2>Selecciona un Médico y una Fecha para Agendar Cita</h2>

            <asp:DropDownList ID="ddlMedicos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMedicos_SelectedIndexChanged" CssClass="form-control" />
            <br /><br />

            <div class="calendar">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" />
            </div>

            <asp:HiddenField ID="hfHoraSeleccionada" runat="server" />
            <asp:HiddenField ID="hfFechaSeleccionada" runat="server" />

            <asp:Panel ID="PanelHorarios" runat="server" />
            
            <asp:Button ID="btnAgendar" runat="server" Text="Agendar Cita" CssClass="btn-agendar" OnClick="btnAgendar_Click" />
            
            <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje" />
        </div>
    </form>
</body>
</html>
