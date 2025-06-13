<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministradorVis.aspx.cs" Inherits="ClinicaReproductiva5701.AdministradorVis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      
  <!-- Navbar -->
  <nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid d-flex align-items-center">
      <a class="navbar-brand" href="~/">Clínica Reproductiva</a>
      <button class="navbar-toggler ms-auto" type="button"
              data-bs-toggle="collapse" data-bs-target="#docMenu"
              aria-controls="docMenu" aria-expanded="false"
              aria-label="Menú de doctores">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="docMenu">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link" runat="server" href="~/UsuarioAdmin">Usuario</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/ConsultorioAdmin">Consultorio</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/MedicoAdmin">Medico</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/LaboratoristaAdmin">Laboratorista</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/ResultadosLaboratorioAdmin">Resultados Laboratorio</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/PagoAdmin">Pago</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/CitasAdmin">Cita</a></li>
      </ul>
    </div>
  </nav>

  <!-- Cabecera -->
  <div class="header mt-3">
    Bienvenido Administrador, <asp:Label ID="lblUsuario" runat="server" CssClass="fw-bold" />
  </div>

  <!-- Imagen bienvenida -->
  <div class="seccion-principal text-center mt-4">
    <asp:Image ID="imgClinica" runat="server"
               ImageUrl="~/imagenes/Bienvenida.png"
               AlternateText="Ilustración Clínica"
               style="max-width: 100%; height: auto;" />
  </div>

  <!-- Estilos responsivos -->
  <style>
    body {
      background-color: pink;
      margin: 0;
      padding: 0;
    }

    #MainContent {
      background-color: pink;
      min-height: 100vh;
      padding: 1rem;
      box-sizing: border-box;
    }

    .header {
      font-size: 1.5rem;
      color: #333;
      text-align: center;
      margin-top: 1rem;
    }

    .seccion-principal {
      padding: 1.5rem;
      border-radius: 1rem;
      box-sizing: border-box;
    }

    @media (max-width: 576px) {
      .header {
        font-size: 1.2rem;
      }

      .seccion-principal {
        padding: 1rem;
      }
    }
  </style>
</asp:Content>
