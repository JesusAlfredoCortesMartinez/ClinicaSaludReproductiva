<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Paciente_exis.aspx.cs" Inherits="ClinicaReproductiva5701.Paciente_existente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body {
            background-color: pink;
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }

        .contenedor {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 25px;
            padding: 50px;
        }

        .boton-grande {
            width: 200px;
            height: 60px;
            background-color: #2d8fff;
            color: white;
            font-size: 20px;
            font-weight: bold;
            border: none;
            box-shadow: 4px 4px 0px #000;
        }

        .boton-rojo {
            width: 150px;
            height: 50px;
            background-color: red;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            box-shadow: 4px 4px 0px #000;
        }

        .input-curp {
            width: 400px;
            height: 35px;
            font-size: 16px;
            padding: 5px;
        }

        .texto {
            font-size: 24px;
            color: black;
            text-align: center;
        }

        .fila-curp {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        h1 {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
        }
    </style>

    <div class="contenedor">
        <h1>Paciente Existente</h1>

        <asp:Label ID="lblId_Expediente" runat="server" Text="Última visita" CssClass="texto" />
        <div class="fila-curp">
            <asp:TextBox ID="txtId_Expediente" runat="server" CssClass="input-curp" placeholder="Fecha de la última visita" />
        </div>

        <asp:Label ID="Label1" runat="server" Text="Seguimiento requerido" CssClass="texto" />
        <div class="fila-curp">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-curp" placeholder="Especificar seguimiento" />
        </div>

        <asp:Button ID="Button1" runat="server" Text="Expediente" CssClass="boton-grande" OnClick="agregar1" />
        <asp:Button ID="Button2" runat="server" Text="Regresar" CssClass="boton-rojo" OnClick="agregar2" />
    </div>

</asp:Content>
