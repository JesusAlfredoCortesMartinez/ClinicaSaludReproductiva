<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fertilizacion.aspx.cs" Inherits="ClinicaReproductiva5701.Fertilizacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
       body {
    background-color: pink;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.contenido-centrado {
    max-width: 1000px;
    margin: auto;
    padding: 20px;
    text-align: center;
}

.miTabla {
    width: 100%;
    max-width: 100%;
    border-collapse: collapse;
    table-layout: auto;
}

.miTabla th, .miTabla td {
    white-space: normal;
    word-wrap: break-word;
    overflow-wrap: break-word;
}

.miTabla tr:nth-child(even) td {
    background-color: #f2f2f2;
}

.miTabla, .miTabla th, .miTabla td {
    border: 1px solid #ccc;
}

.tarjeta-medico {
    margin: 20px 0;
    background-color: #ffeaf5;
    padding: 15px;
    border-radius: 10px;
    box-shadow: 1px 1px 5px rgba(0,0,0,0.1);
}

.info-medico {
    display: flex;
    align-items: flex-start;
    text-align: left;
    gap: 15px;
    flex-wrap: wrap;
}

.info-medico img {
    width: 100px;
    height: auto;
    border-radius: 10px;
}

.especialidad {
    font-weight: bold;
    margin-top: 0;
    color: #c71585;
}

/* RESPONSIVE PARA CELULARES */
@media (max-width: 768px) {
    .info-medico {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .info-medico img {
        width: 80px;
        margin-bottom: 10px;
    }

    .especialidad {
        font-size: 16px;
    }

    .miTabla th,
    .miTabla td {
        font-size: 14px;
    }

    #btn_Agregar {
        width: 100%;
    }
}

    </style>


    <div style="text-align: left; padding-left: 10px;">
        <asp:Image ID="Image1" runat="server" Height="88px" ImageUrl="~/imagenes/caritaf.png" Width="99px" />
        <asp:Label ID="Label1" runat="server" Text="Clínica Reproductiva" Font-Size="Large" Font-Bold="True"></asp:Label>
    </div>



    <br />
    <br />
   <asp:Label ID="Label2" runat="server" Text="Fertilización In Vitro (FIV)"
    Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>


    <br />
    <br />

    <div style="overflow-x: auto; max-width: 100%;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        CssClass="miTabla"
        BackColor="White"
        BorderColor="#CCCCCC"
        BorderStyle="Solid"
        BorderWidth="1px"
        CellPadding="5"
        GridLines="Both">
        <AlternatingRowStyle BackColor="#f2f2f2" />
        <HeaderStyle BackColor="#CCCCCC" ForeColor="Black" Font-Bold="True" />
        <Columns>
            <asp:BoundField DataField="Concepto" HeaderText="Concepto" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="Costo" HeaderText="Costo Aproximado (MXN)" />
        </Columns>
    </asp:GridView>
        
</div>

    <br />
    <div style="text-align: right;">
        <asp:Button ID="btn_Agregar" runat="server" Text="Contratar" CssClass="btn btn-primary" OnClick="btn_Agregar_Click" />
    </div>


    <div class="tarjeta-medico">
        <div class="info-medico">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/imagenes/registro.png" />
            <div>
                <p class="especialidad">Fertilización In Vitro (FIV)</p>
                <p>La fertilización in vitro es una técnica de alta complejidad en la que se fecunda óvulos con espermartozoides en un laboratorio. Los embriones obtenidos se transfieren posteriormente al útero de la mujer.</p>
            </div>
        </div>
    </div>

    <div class="tarjeta-medico">
        <div class="info-medico">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/registro.png" />
            <div>
                <p class="especialidad">Pasos principales del proceso:</p>
                <p>- Estimulación ovárica.</p>
                <p>- Aspiración folicular para extraer los óvulos.</p>
                <p>- Fertilización en laboratorio (FIV o ICSI).</p>
                <p>- Cultivo embrionario.</p>
            </div>
        </div>
    </div>

    <div class="tarjeta-medico">
        <div class="info-medico">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/imagenes/registro.png" />
            <div>
                <p class="especialidad">Modalidades asociadas:</p>
                <p>- ICSI: cuando se inyecta directamente un espermatozoide en un óvulo.</p>
                <p>- Diagnóstico Genético Preimplantacional (DGP): para identificar enfermedades genéticas antes de la implantación.</p>
                <p>- FIV con ovodonación o donación de esperma.</p>
            </div>
        </div>
    </div>

    <div class="tarjeta-medico">
        <div class="info-medico">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagenes/financiamiento.png" Width="100%" />
        </div>
    </div>

</asp:Content>
