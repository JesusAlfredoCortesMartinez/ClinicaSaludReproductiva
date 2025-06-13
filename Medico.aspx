<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medico.aspx.cs" Inherits="ClinicaReproductiva5701.Medico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Medicos</h1>

<asp:Label ID="lblNombre" runat="server" Text="Nombre *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresa el Nombre del Medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>El nombre es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblApellido_P" runat="server" Text="Apellido Paterno *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtApellido_P" runat="server" CssClass="form-control" placeholder="Ingresa el Apellido Paterno del Medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvApellidoP" runat="server" ControlToValidate="txtApellido_P" ErrorMessage="<br/>El apellido paterno es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revApellidoP" runat="server" ControlToValidate="txtApellido_P" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblApellido_M" runat="server" Text="Apellido Materno *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtApellido_M" runat="server" CssClass="form-control" placeholder="Ingresa el Apellido Materno del Medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvApellidoM" runat="server" ControlToValidate="txtApellido_M" ErrorMessage="<br/>El apellido materno es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revApellidoM" runat="server" ControlToValidate="txtApellido_M" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

    <br />

<asp:Label ID="lblEspecialidad" runat="server" Text="Especialidad *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
<asp:TextBox ID="txtEspecialidad" runat="server" CssClass="form-control" placeholder="Ingresa la especialidad del medico"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="txtEspecialidad" ErrorMessage="<br/>La Especialidad es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revEspecialidad" runat="server" ControlToValidate="txtEspecialidad" ErrorMessage="<br/>Solo letras permitidas" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$" ForeColor="Red" Display="Dynamic" />

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

<asp:Label ID="lblId_Resultados" runat="server" Text="Id_Resultados *" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <br />
<asp:TextBox ID="txtId_Resultados" runat="server" CssClass="form-control" placeholder="Ingresa el Id de los resultados"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvId_Resultados" runat="server" ControlToValidate="txtId_Resultados" ErrorMessage="<br/>El Id_Resultados es obligatorio" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revId_Resultados" runat="server" ControlToValidate="txtId_Resultados" ErrorMessage="<br/>Solo números permitidos" ValidationExpression="^\d+$" ForeColor="Red" Display="Dynamic" />

<br />
<asp:Button ID="btn_Agregar" runat="server" Text="Agregar Nuevo Medico" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Actualizar Medico" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

<asp:GridView ID="grid_Medico" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Medico" OnSelectedIndexChanged="grid_Medico_SelectedIndexChanged" OnRowDeleting="grid_Medico_RowDeleting"> 
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
        <asp:BoundField DataField="Id_Medico" HeaderText="Id_Medico" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Apellido_P" HeaderText="Apellido Paterno" />
        <asp:BoundField DataField="Apellido_M" HeaderText="Apellido Materno" />
        <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
        <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
        <asp:BoundField DataField="correo" HeaderText="Correo" /> 
        <asp:BoundField DataField="Id_Resultados" HeaderText="Id_Resultados" />
        
    </Columns>
</asp:GridView>
</asp:Content>
