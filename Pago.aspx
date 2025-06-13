<%@ Page Title="Pago" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="ClinicaReproductiva5701.Pago" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: pink;
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }

        .container {
            margin: 50px auto;
            padding: 30px;
            max-width: 600px;
            background-color: #fbd1e0;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #6b0f1a;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="date"], select, .aspNetDisabled {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-family: inherit;
        }

        .btn-container {
            margin-top: 25px;
            text-align: center;
        }

        .action-btn {
            background-color: #007bff;
            color: white;
            padding: 10px 25px;
            border: none;
            font-weight: bold;
            border-radius: 6px;
            margin: 0 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-btn:hover {
            background-color: #0056b3;
        }

        .back-btn {
            background-color: #dc3545;
        }

        .back-btn:hover {
            background-color: #a71d2a;
        }

        @media (max-width: 640px) {
            .container {
                padding: 20px;
                margin: 20px;
            }

            .action-btn {
                width: 100%;
                margin-top: 10px;
            }

            .btn-container {
                display: flex;
                flex-direction: column;
            }
        }
    </style>

    <div class="container">
        <h2>Registro de Pago</h2>

        <div class="form-group">
            <label for="txtIdPago">ID Pago</label>
            <asp:TextBox ID="txtIdPago" runat="server" ReadOnly="True" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtMonto">Monto</label>
            <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtFecha">Fecha</label>
            <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="ddlMetodoPago">Método de Pago</label>
            <asp:DropDownList ID="ddlMetodoPago" runat="server" Enabled="False" CssClass="form-control">
                <asp:ListItem Text="Efectivo" Value="Efectivo" />
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="txtIdTratamiento">ID Tratamiento</label>
            <asp:TextBox ID="txtIdTratamiento" runat="server" CssClass="form-control" />
        </div>

        <div class="btn-container">
            <asp:Button ID="btnAgregar" runat="server" CssClass="action-btn" Text="Agregar" OnClick="btnAgregar_Click" />
            <asp:Button ID="btnRegresar" runat="server" CssClass="action-btn back-btn" Text="Regresar" OnClick="btnRegresar_Click" />
        </div>
    </div>
</asp:Content>
