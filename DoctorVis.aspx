<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DoctorVis.aspx.cs" Inherits="ClinicaReproductiva5701._DoctorVis" %>
<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">

  <!-- Navbar HAMBURGUESA específico para doctores -->
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
        <li class="nav-item"><a class="nav-link" runat="server" href="~/CitasDoc">Cita</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/HistorialDoc">Historial Médico</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/TratamientoDoc">Tratamiento</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/ResultadoDoc">Resultados laboratorio</a></li>
        <li class="nav-item"><a class="nav-link" runat="server" href="~/PacienteDoc">Paciente</a></li>
      </ul>
    </div>
  </nav>

  <!-- Cabecera -->
  <div class="header mt-3 text-center">
    Bienvenido, <asp:Label ID="lblUsuario" runat="server" CssClass="fw-bold" />
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
      padding: 1.5rem;
      box-sizing: border-box;
    }

    .header {
      font-size: 1.5rem;
      color: #333;
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
