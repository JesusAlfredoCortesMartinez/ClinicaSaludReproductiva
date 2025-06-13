<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescripciones.aspx.cs" Inherits="ClinicaReproductiva5701.Prescripciones" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
    body {
        background-color: pink;
    }
</style>


    <h1>Formulario de Prescripciones</h1>

    <asp:Label ID="lblId_Expediente" runat="server" Text="ID Expediente" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Expediente" runat="server" CssClass="form-control" placeholder="Ingresa el ID del expediente" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Medico" runat="server" Text="ID Médico" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Medico" runat="server" CssClass="form-control" placeholder="Ingresa el ID del médico" Width="100%"></asp:TextBox>

    <asp:Label ID="lblId_Tratamiento" runat="server" Text="ID Tratamiento" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Tratamiento" runat="server" CssClass="form-control" placeholder="Ingresa el ID del tratamiento" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Prescripcion" runat="server" Text="Fecha de Prescripción" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Prescripcion" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Inicio" runat="server" Text="Fecha de Inicio" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Inicio" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Fin" runat="server" Text="Fecha de Fin" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Fin" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>

    <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control" placeholder="Escribe observaciones" Width="100%"></asp:TextBox>

    <asp:Label ID="lblEstado" runat="server" Text="Estado" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control" placeholder="Estado de la prescripción" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Prescripción" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Prescripción" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_Prescripciones" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Prescripcion"
        OnSelectedIndexChanged="grid_Prescripciones_SelectedIndexChanged"
        OnRowDeleting="grid_Prescripciones_RowDeleting"
        CssClass="table table-bordered">

        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CommandName="Select" Text="Ver" CssClass="btn btn-info" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id_Prescripcion" HeaderText="ID Prescripción" />
            <asp:BoundField DataField="Id_Expediente" HeaderText="ID Expediente" />
            <asp:BoundField DataField="Id_Medico" HeaderText="ID Médico" />
            <asp:BoundField DataField="Id_Tratamiento" HeaderText="ID Tratamiento" />
            <asp:BoundField DataField="Fecha_Prescripcion" HeaderText="Fecha Prescripción" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Fecha_Inicio" HeaderText="Fecha Inicio" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Fecha_Fin" HeaderText="Fecha Fin" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
        </Columns>

    </asp:GridView>

</asp:Content>

