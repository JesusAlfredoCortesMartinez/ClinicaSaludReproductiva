<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Paciente_Nuevo.aspx.cs" Inherits="ClinicaReproductiva5701.Paciente_Nuevo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Pacientes Nuevos</h1>

<asp:Label ID="lblNombre" runat="server" Text="Nombre *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresa el Nombre del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>El nombre es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblApellido_P" runat="server" Text="Apellido Paterno *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtApellido_P" runat="server" CssClass="form-control" placeholder="Ingresa el Apellido Paterno del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvApellidoP" runat="server" ControlToValidate="txtApellido_P" ErrorMessage="<br/>El apellido paterno es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revApellidoP" runat="server" ControlToValidate="txtApellido_P" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblApellido_M" runat="server" Text="Apellido Materno *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtApellido_M" runat="server" CssClass="form-control" placeholder="Ingresa el Apellido Materno del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvApellidoM" runat="server" ControlToValidate="txtApellido_M" ErrorMessage="<br/>El apellido materno es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revApellidoM" runat="server" ControlToValidate="txtApellido_M" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblFecha_Nacimiento" runat="server" Text="Fecha de Nacimiento *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtFecha_Nacimiento" runat="server" CssClass="form-control" TextMode="Date" placeholder="Ingresa la Fecha de Nacimiento"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFecha_Nacimiento" ErrorMessage="<br/>La fecha de nacimiento es obligatoria" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblSexo" runat="server" Text="Sexo *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtSexo" runat="server" CssClass="form-control" placeholder="Ingresa el Sexo del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="txtSexo" ErrorMessage="<br/>El sexo es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revSexo" runat="server" ControlToValidate="txtSexo" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblTelefono" runat="server" Text="Teléfono *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Ingresa el Teléfono del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="<br/>El teléfono es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblCorreo" runat="server" Text="Correo *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingresa el Correo del Paciente Nuevo"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="<br/>El correo es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="<br/>Correo electrónico inválido" ValidationExpression="^\w+(\[-+.']\w+)*@\w+(\[-.]\w+)*.\w+(\[-.]\w+)*$" ForeColor="Red" Display="Dynamic" />

<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Paciente" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Nuevo Paciente" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Paciente_Nuevo" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Paciente" OnSelectedIndexChanged="grid_Paciente_Nuevo_SelectedIndexChanged" OnRowDeleting="grid_Paciente_Nuevo_RowDeleting"> 
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
        <asp:BoundField DataField="Id_Paciente" HeaderText="Id_Paciente_Nuevo" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Apellido_P" HeaderText="Apellido Paterno" />
        <asp:BoundField DataField="Apellido_M" HeaderText="Apellido Materno" />
        <asp:BoundField DataField="Fecha_Nacimiento" HeaderText="Fecha de Nacimiento" DataFormatString="{0:d}" />
        <asp:BoundField DataField="sexo" HeaderText="Sexo" />
        <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
        <asp:BoundField DataField="correo" HeaderText="Correo" /> 
    </Columns>
</asp:GridView>

</asp:Content>
