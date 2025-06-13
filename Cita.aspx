<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cita.aspx.cs" Inherits="ClinicaReproductiva5701.Cita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<style>
    body {
        background-color: pink;
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
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Paciente" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Nuevo Paciente" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Cita" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Cita" OnSelectedIndexChanged="grid_Cita_SelectedIndexChanged" OnRowDeleting="grid_Cita_RowDeleting"> 
    <Columns>
        <asp:TemplateField ShowHeader="False"> 
            <ItemTemplate>
                <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn btn-info" /> 
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField ShowHeader="False"> 
            <ItemTemplate>
                <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger" /> 
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Id_Cita" HeaderText="Id_Cita" />
        <asp:BoundField DataField="Fecha" HeaderText="Fecha" DataFormatString="{0:d}" />
        <asp:BoundField DataField="Hora" HeaderText="Hora" />
        <asp:BoundField DataField="Motivo" HeaderText="Motivo" />
        <asp:BoundField DataField="Id_Medico" HeaderText="Id_Medico" />
        <asp:BoundField DataField="Id_Paciente" HeaderText="Id_Paciente" />
        <asp:BoundField DataField="id_consultorio" HeaderText="id_consultorio" />
    </Columns>
</asp:GridView>
</asp:Content>
