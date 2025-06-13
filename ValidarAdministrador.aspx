<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ValidarAdministrador.aspx.cs" Inherits="ClinicaReproductiva5701.ValidarAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
    body {
        background-color: pink;
        font-family: Comic Sans MS, cursive;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 500px;
        width: 90%;
        margin: 100px auto;
        border: 1px solid black;
        padding: 20px;
        background-color: pink;
        box-shadow: 3px 3px black;
        box-sizing: border-box;
    }

    .input-curp {
        width: 100%;
        height: 30px;
        font-size: 18px;
        border: 2px solid black;
        margin-bottom: 20px;
        box-sizing: border-box;
    }

    .button {
        font-size: 16px;
        font-weight: bold;
        padding: 10px 20px;
        border: none;
        margin: 5px 5px 10px 0;
        box-shadow: 2px 2px black;
        cursor: pointer;
        width: 100%;
        box-sizing: border-box;
    }

    .btn-entrar, .btn-crear {
        background-color: #4285F4;
        color: white;
    }

    .btn-regresar {
        background-color: red;
        color: white;
    }

    .btn-entrar:hover, .btn-crear:hover, .btn-regresar:hover {
        opacity: 0.8;
    }

    label {
        font-weight: bold;
        font-size: 18px;
    }

    h2 {
        margin-bottom: 10px;
        text-align: center;
    }
</style>

 <div class="container">
     <h2>Ingrese Contraseña Hash para entrar</h2>
     <label for="txtCurp">Contraseña Hash</label><br />
     <asp:TextBox ID="txtCurp" runat="server" CssClass="input-curp" /><br />

     <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="button btn-entrar" OnClick="btnEntrar_Click" />
     <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="button btn-regresar" OnClick="btnRegresar_Click" />
 </div>
</asp:Content>
