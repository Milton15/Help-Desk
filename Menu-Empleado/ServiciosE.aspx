<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServiciosE.aspx.cs" Inherits="Menu_Servicios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mr. Develover - Empleado</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
    <link href="Aempstyle.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" />

    <script src="../js/jquery-1.6.3.min.js"></script>
    <script src="../js/cufon-yui.js"></script>
    <script src="../js/cufon-replace.js"></script>
    <script src="../js/NewsGoth_BT_400.font.js"></script>
    <script src="../js/FF-cash.js"></script>
    <script src="../js/script.js"></script>
    <script src="../js/jquery.equalheights.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/tms-0.3.js"></script>
    <script src="../js/tms_presets.js"></script>
    <script src="../js/easyTooltip.js"></script>
</head>
<body id="page2">
    <form runat="server">
        <div class="extra">
            <div class="main">
                <!--==============================header=================================-->
                <header>
                    <div class="indent">
                        <div class="row-top">
                            <div class="wrapper">
                                <h1><a href="HomeE.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                                <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" CssClass="button-2" runat="server" Text="Log out" OnClick="btnLogout_Click" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="HomeE.aspx">Inicio</a></li>
                                <li><a href="PFE.aspx">Perfil</a></li>
                                <li><a class="active" href="ServiciosE.aspx">Servicios</a></li>
                                <li><a href="TarifasE.aspx">Tarifas</a></li>
                                <li><a href="NosotrosE.aspx">Usuarios</a></li>
                                <li class="last"><a href="ContactoE.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================content================================-->
                <section id="content">
                    <div class="wrapper">
                        <article class="col-1">
                            <div class="indent-left">
                                <h3 class="prev-indent-bot">Nuestros Servicios</h3>
                                <div class="wrapper prev-indent-bot">
                                    <figure class="img-indent">
                                        <img src="../images/page2-img1.jpg" alt="" />
                                    </figure>
                                    <div class="extra-wrap">
                                        <h6 class="prev-indent-bot">Soporte técnico y asistencia técnica </h6>
                                        Proporcionamos soporte técnico y asistencia técnica a los usuarios al tener algún problema con los productos o servicios, proporcionados por nuestra empresa, (hardware o software de una computadora de un servidor de Internet, periféricos, artículos electrónicos, maquinaria, o cualquier otro equipo o dispositivo)
                                    </div>
                                </div>
                                <p class="p2">Nuestro propósito es resolver todas las situaciones que puedan surgir con los productos o servicios Adquirido por nuestros usuarios.</p>
                                <a class="button-2" href="#">Leer mas</a>
                            </div>
                        </article>
                        <article class="col-2">
                            <h3 class="p1">Lista de Servicios</h3>
                            <ul class="list-1">
                                <li><a href="#">Soporte Tecnico Presencial</a></li>
                                <li><a href="#">Soporte Tecnico a Distancia</a></li>
                                <li><a href="#">Soporte Tecnico Aereo</a></li>
                                <li><a href="#">Soporte Tecnico Auxiliar</a></li>
                                <li><a href="#">Soporte Tecnico Remoto</a></li>
                                <li><a href="#">Soporte En Linea</a></li>
                                <li><a href="#">Asistencia Telefonica</a></li>
                                <li><a href="#">Video Llamada</a></li>
                                <li><a href="#">Acceso Remoto</a></li>
                                <li><a href="#">Seguridad de Datos</a></li>
                                <li><a href="#">Instalacion de Software</a></li>
                                <li><a href="#">Recuperacion de Datos</a></li>
                            </ul>
                        </article>
                    </div>
                </section>

               
                <!--==============================aside================================-->
                <aside>
                    <div class="wrapper">
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Servicios Electricos</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page2-img2.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Soporte Tecnico Presencial</h6>
                                        <p>Soporte Tecnico y Asistencia Tecnica a Nivel de Hardware</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Servicio Tecnico</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page2-img3.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Soporte Tecnico En Linea</h6>
                                        <p>Soporte Tecnico a distancia sin necesidad de molestar con una visita al usuario.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-2">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Desarrollo Web</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page2-img4.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Aplicaciones Web</h6>
                                        <p>Creamos Aplicaciones Web que solucionen las necesidades de la empresa.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="block"><asp:Label ID="EmpleadoID" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="EmpresaID" runat="server" Text="" Visible="false"></asp:Label></div>
                </aside>
            </div>
        </div>
        <!--==============================footer=================================-->
        <footer>
            <div class="main">
                <div class="footer-bg">
                    <p class="prev-indent-bot">Copyright &copy; <a href="#">Mr. Developer</a> Todos los derechos Reservados | Diseñado por <a target="_blank" href="http://www.templatemonster.com/">www.mr.developer.com</a></p>
                    <ul class="list-services">
                        <li><a class="tooltips" href="#"></a></li>
                        <li class="item-1"><a class="tooltips" href="#"></a></li>
                        <li class="item-2"><a class="tooltips" href="#"></a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
