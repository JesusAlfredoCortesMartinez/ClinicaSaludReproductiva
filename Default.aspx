<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClinicaReproductiva5701._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
   body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.mitad-superior {
    background-color: gray;
    color: white;
    padding: 20px;
    display: flex;
    flex-direction: column;
    gap: 20px;
    min-height: 100vh;
    box-sizing: border-box;
    max-width: 1200px;
    margin: auto;
}

.encabezado {
    display: flex;
    align-items: center;
    gap: 10px;
    flex-wrap: wrap;
}

.encabezado h2 {
    font-size: 28px;
}

.contenido-interno {
    flex: 1;
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
}

.texto-informativo {
    flex: 1 1 300px;
    padding: 10px;
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
    min-width: 280px;
}

.texto-informativo p,
.texto-informativo ul {
    color: white;
}
.botones-servicios {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
}

.botones-servicios img {
    width: 120px;
    height: 120px;
    object-fit: cover;
    border: 2px solid #fff;
    border-radius: 10px;
    transition: transform 0.2s;
}

.botones-servicios img:hover {
    transform: scale(1.05);
    cursor: pointer;
}

.mitad-inferior {
    background-color: pink;
    padding: 40px 20px;
    color: black;
    box-sizing: border-box;
    max-width: 1200px;
    margin: auto;
}

.equipo-medico {
    text-align: left;
    padding: 20px;
}

.tarjeta-medico {
    display: flex;
    align-items: flex-start;
    margin-bottom: 20px;
    background-color: #ffe4ec;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
    flex-wrap: wrap;
}

.img-medico {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 10px;
    margin-right: 15px;
}

.info-medico {
    flex: 1;
    min-width: 250px;
}

.especialidad {
    font-weight: bold;
    color: #d63384;
    margin: 5px 0;
}

/* Imagen final adaptativa */
#MainContent_Image3 {
    width: 100%;
    height: auto;
    max-width: 100%;
}

/* RESPONSIVE: Estilos para pantallas menores a 768px (celulares/tablets) */
@media (max-width: 768px) {
    .botones-servicios {
        flex-direction: row;
        justify-content: center;
    }

    .botones-servicios img {
        width: 100px;
        height: 100px;
    }
}

    .texto-informativo p,
    .texto-informativo ul {
        font-size: 14px;
    }

    .encabezado h2 {
        font-size: 20px;
    }

    .tarjeta-medico {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .img-medico {
        margin-bottom: 10px;
        margin-right: 0;
    }
}

</style>


    <div class="mitad-superior">
        <!-- Encabezado con imagen y título -->
        <div class="encabezado">
            <asp:Image ID="Image1" runat="server" Height="70px" Width="69px" ImageUrl="~/imagenes/caritagris.png" />
            <h2 style="margin: 0;">Clínica Reproductiva</h2>
        </div>

        <!-- Contenido dividido en texto y botones -->
        <div class="contenido-interno">
            <!-- Texto informativo -->
            <div class="texto-informativo">
                <p>En nuestra clínica especializada en medicina reproductiva, acompañamos a cada paciente en su camino hacia la maternidad y paternidad con empatía, ética y tecnología de vanguardia. Contamos con un equipo médico altamente calificado y años de experiencia ofreciendo soluciones personalizadas a problemas de fertilidad.</p>

                <h3>Nuestros servicios incluyen:</h3>
                <ul>
                    <li><strong>Inseminación Artificial (IA):</strong> Técnica sencilla y efectiva para parejas con dificultades leves de fertilidad.</li>
                    <li><strong>Fertilización In Vitro (FIV):</strong> Avanzado tratamiento que une óvulo y esperma en laboratorio para su posterior implantación.</li>
                    <li><strong>Infertilidad Masculina:</strong> Evaluación y tratamiento de problemas espermáticos.</li>
                    <li><strong>Ovodonación:</strong> Para mujeres que no pueden usar sus propios óvulos, con un programa seguro y confidencial.</li>
                </ul>

                <p><strong>Tu sueño de ser mamá o papá puede hacerse realidad. Estamos aquí para ayudarte.</strong></p>
            </div>

            <!-- Botones en forma de cuadro -->
            <div class="botones-servicios">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagenes/inseminacionartificial.png" OnClick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/imagenes/fertilizacioninvitro.png" OnClick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/imagenes/infertilidadmasculina.png" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/imagenes/ovodonacion.png" OnClick="ImageButton4_Click" />
            </div>
        </div>
    </div>


    <div class="mitad-inferior">
        <br />
        <section class="equipo-medico">
            <h2>Nuestro equipo médico especializado</h2>

            <div class="tarjeta-medico">
                <img src="imagenes/medico.png" alt="Dr. Alejandro Torres" class="img-medico" />
                <div class="info-medico">
                    <h3>Dr. Pascual Garica Santana</h3>
                    <p class="especialidad">Inseminación Artificial</p>
                    <p>Especialista en técnicas de reproducción asistida con más de 10 años de experiencia ayudando a parejas a lograr su sueño de ser padres.</p>
                </div>
            </div>

            <div class="tarjeta-medico">
                <img src="imagenes/medico.png" alt="Dra. Mariana López" class="img-medico" />
                <div class="info-medico">
                    <h3>Dra. Jacobo Villalpando Benitez</h3>
                    <p class="especialidad">Fertilización In Vitro</p>
                    <p>Pionera en tratamientos de FIV personalizados, enfocada en brindar acompañamiento emocional y médico a cada paciente.</p>
                </div>
            </div>

            <div class="tarjeta-medico">
                <img src="imagenes/medico.png" alt="Dr. Ricardo Méndez" class="img-medico" />
                <div class="info-medico">
                    <h3>Dr. Luis Llamas Gaitan</h3>
                    <p class="especialidad">Infertilidad Masculina</p>
                    <p>Experto en diagnóstico y tratamiento de factores masculinos que afectan la fertilidad, con tecnología avanzada y atención cercana.</p>
                </div>
            </div>

            <div class="tarjeta-medico">
                <img src="imagenes/medica.png" alt="Dra. Liliana Esquivel Botello" class="img-medico" />
                <div class="info-medico">
                    <h3>Dra. Liliana Esquivel Botello</h3>
                    <p class="especialidad">Ovodonación</p>
                    <p>Dirige el programa de ovodonación, garantizando procesos éticos y seguros para mujeres que requieren óvulos donados.</p>
                </div>
            </div>

            <div class="tarjeta-medico">
                <div class="info-medico">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/imagenes/financiamiento.png" Width="1036px" Height="348px" />
                </div>
            </div>
        </section>

    </div>
</asp:Content>
