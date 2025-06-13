<%@ Page Title="Tabla Procedimientos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProcedimientoDoc.aspx.cs" Inherits="ClinicaReproductiva5701.ProcedimientoDoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: pink; padding: 20px;">
        <h2>Tabla de Procedimientos Médicos</h2>

        <asp:GridView ID="gvProcedimientos" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Procedimiento" OnRowCommand="gvProcedimientos_RowCommand">
            <Columns>
                <asp:ButtonField Text="Ver" CommandName="Ver" ButtonType="Button" />
                <asp:BoundField DataField="Id_Procedimiento" HeaderText="ID Procedimiento" />
                <asp:BoundField DataField="Id_Tratamiento" HeaderText="ID Tratamiento" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" DataFormatString="{0:yyyy-MM-dd}" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" BackColor="Green" ForeColor="White" OnClick="btnRegresar_Click" />
    </div>
</asp:Content>
