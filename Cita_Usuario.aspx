<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cita_Usuario.aspx.cs" Inherits="ClinicaReproductiva5701.Cita_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    body {
        background-color: pink;
    }
                .gridview-estilo {
    border-collapse: collapse;
    width: 100%;
    font-family: Arial, sans-serif;
}
        </style>


    
<h1>Formulario de Citas</h1>

<asp:Label ID="lblFecha" runat="server" Text="Fecha de cita*" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" TextMode="Date" placeholder="Ingresa la Fecha de tu cita"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="txtFecha" ErrorMessage="<br/>La fecha de cita es obligatoria" ForeColor="Red" Display="Dynamic" />

    <br />


<asp:Label ID="lblHora" runat="server" Text="Hora *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtHora" runat="server" CssClass="form-control" placeholder="Ingresa la Hora de la cita"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvHora" runat="server" ControlToValidate="txtHora" ErrorMessage="<br/>la hora es obligatorio" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblMotivo" runat="server" Text="Motivo *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtMotivo" runat="server" CssClass="form-control" placeholder="Ingresa el Motivo de la cita"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvMotivo" runat="server" ControlToValidate="txtMotivo" ErrorMessage="<br/>El Motivo de la cita es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revMotivo" runat="server" ControlToValidate="txtMotivo" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />


<asp:Label ID="lblId_Medico" runat="server" Text="Id_Medico *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtId_Medico" runat="server" CssClass="form-control" placeholder="Ingresa el Id_Medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Medico" runat="server" ControlToValidate="txtId_Medico" ErrorMessage="<br/>El teléfono es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Medico" runat="server" ControlToValidate="txtId_Medico" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblId_Paciente" runat="server" Text="Id_Paciente *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtId_Paciente" runat="server" CssClass="form-control" placeholder="Ingresa el Id_Paciente para su cita"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Paciente" runat="server" ControlToValidate="txtId_Paciente" ErrorMessage="<br/>El Id_Paciente es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Paciente" runat="server" ControlToValidate="txtId_Paciente" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblid_consultorio" runat="server" Text="id_consultorio *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtid_consultorio" runat="server" CssClass="form-control" placeholder="Ingresa el id_consultorio para la cita"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvid_consultorio" runat="server" ControlToValidate="txtid_consultorio" ErrorMessage="<br/>El id_consultorio es obligatorio para la cita" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revid_consultorio" runat="server" ControlToValidate="txtid_consultorio" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />


<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Crear Cita" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Regresar" CssClass="btn btn-primary" OnClick="btnActualizar_Click" />

</asp:Content>
