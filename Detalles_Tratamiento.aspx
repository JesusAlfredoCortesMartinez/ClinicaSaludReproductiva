<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalles_Tratamiento.aspx.cs" Inherits="ClinicaReproductiva5701.Detalles_Tratamiento" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    

    <style>
    body {
        background-color: pink;
    }
</style>

    <h1>Formulario de Detalles de Tratamiento</h1>

    <asp:Label ID="lblId_Tratamiento" runat="server" Text="ID Tratamiento" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtId_Tratamiento" runat="server" CssClass="form-control" placeholder="Ingresa el ID del Tratamiento" Width="1800px"></asp:TextBox>

    <asp:Label ID="lblFrecuencia" runat="server" Text="Frecuencia" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtFrecuencia" runat="server" CssClass="form-control" placeholder="Ingresa la frecuencia del tratamiento" Width="1800px"></asp:TextBox>

    <asp:Label ID="lblDuracion_Dias" runat="server" Text="Duración (días)" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtDuracion_Dias" runat="server" CssClass="form-control" placeholder="Ingresa la duración en días" Width="1800px"></asp:TextBox>

    <asp:Label ID="lblInstrucciones_Especificas" runat="server" Text="Instrucciones Específicas" CssClass="badge" Font-Size="Large" Style="color: black;"></asp:Label>
    <asp:TextBox ID="txtInstrucciones_Especificas" runat="server" CssClass="form-control" placeholder="Ingresa instrucciones específicas del tratamiento" Width="1800px"></asp:TextBox>

    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Detalle" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />

    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Detalle" CssClass="btn btn-success" OnClick="btnActualizar_Click" />

    <asp:GridView ID="grid_Detalles_Tratamiento" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Detalle_Tratamiento"
        OnSelectedIndexChanged="grid_Detalles_Tratamiento_SelectedIndexChanged" OnRowDeleting="grid_Detalles_Tratamiento_RowDeleting"
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
            <asp:BoundField DataField="Id_Detalle_Tratamiento" HeaderText="ID Detalle" />
            <asp:BoundField DataField="Id_Tratamiento" HeaderText="ID Tratamiento" />
            <asp:BoundField DataField="Frecuencia" HeaderText="Frecuencia" />
            <asp:BoundField DataField="Duracion_Dias" HeaderText="Duración (días)" />
            <asp:BoundField DataField="Instrucciones_Especificas" HeaderText="Instrucciones Específicas" />
        </Columns>

    </asp:GridView>

</asp:Content>

