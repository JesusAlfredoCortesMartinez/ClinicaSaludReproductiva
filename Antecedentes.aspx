<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Antecedentes.aspx.cs" Inherits="ClinicaReproductiva5701.Antecedentes" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    body {
        background-color: pink;
    }
</style>

    
    <h1>Formulario de Antecedentes Médicos</h1>

    <asp:Label ID="lblId_Expediente" runat="server" Text="ID Expediente" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Expediente" runat="server" CssClass="form-control" placeholder="Ingresa el ID del expediente" Width="100%"></asp:TextBox>

    <asp:Label ID="lblTipo" runat="server" Text="Tipo de Antecedente" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtTipo" runat="server" CssClass="form-control" placeholder="Ej. Familiar, Personal, Quirúrgico" Width="100%"></asp:TextBox>

    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Describe el antecedente" Width="100%"></asp:TextBox>

    <asp:Label ID="lblGravedad" runat="server" Text="Gravedad" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtGravedad" runat="server" CssClass="form-control" placeholder="Ej. Leve, Moderada, Grave" Width="100%"></asp:TextBox>

    <asp:Label ID="lblFecha_Registro" runat="server" Text="Fecha de Registro" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFecha_Registro" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>

    <br />
    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Antecedente" CssClass="btn btn-primary" OnClick="agregar" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Antecedente" CssClass="btn btn-success" OnClick="actualizar" />

    <asp:GridView ID="grid_Antecedentes" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Antecedente"
        OnSelectedIndexChanged="grid_Antecedentes_SelectedIndexChanged"
        OnRowDeleting="grid_Antecedentes_RowDeleting"
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
            <asp:BoundField DataField="Id_Antecedente" HeaderText="ID Antecedente" />
            <asp:BoundField DataField="Id_Expediente" HeaderText="ID Expediente" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="Gravedad" HeaderText="Gravedad" />
            <asp:BoundField DataField="Fecha_Registro" HeaderText="Fecha de Registro" DataFormatString="{0:yyyy-MM-dd}" />
        </Columns>

    </asp:GridView>

</asp:Content>
