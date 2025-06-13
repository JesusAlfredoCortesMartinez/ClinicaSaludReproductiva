<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Expediente_usuarios.aspx.cs" Inherits="ClinicaReproductiva5701.Expediente_usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     
<style>
    body {
        background-color: pink;
    }
</style>

<h1>Formulario de Expedientes</h1>


<asp:GridView ID="grid_Expediente" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Expediente"> 
    <Columns>
        <asp:TemplateField ShowHeader="False"> 
            
        </asp:TemplateField>
        <asp:TemplateField ShowHeader="False"> 
            
        </asp:TemplateField>
        <asp:BoundField DataField="Id_Expediente" HeaderText="Id_Expediente" />
        <asp:BoundField DataField="Historial_Clinico" HeaderText="Historial_Clinico" />
        <asp:BoundField DataField="Id_Paciente" HeaderText="Id_Paciente" />
        <asp:BoundField DataField="Id_Medico" HeaderText="Id_Medico" />
        
        
    </Columns>

</asp:GridView>

<asp:Button ID="btn_Agregar" runat="server" Text="Citas" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
<asp:Button ID="btnActualizar" runat="server" Text="Regresar" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

</asp:Content>

