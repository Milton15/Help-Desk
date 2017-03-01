<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tarifas.aspx.cs" Inherits="Menu_Tarifas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mr. Develover</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" />
    <link href="aSTYLEE.css" rel="stylesheet" type="text/css" media="screen" />

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
<body id="page4">
    <form runat="server">
        <div class="extra">
            <div class="main">
                <!--==============================header=================================-->
                <header>
                    <div class="indent">
                        <div class="row-top">
                            <div class="wrapper">
                                <h1><a href="Home.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                                <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" CssClass="button-2" runat="server" Text="Log out" OnClick="btnLogout_Click" /></strong>

                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="Home.aspx">Inicio</a></li>
                                <li><a href="PF.aspx">Perfil</a></li>
                                <li><a href="Servicios.aspx">Servicios</a></li>
                                <li><a class="active" href="Tarifas.aspx">Tarifas</a></li>
                                <li><a href="Nosotros.aspx">Nosotros</a></li>
                                <li class="last"><a href="Contacto.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================content================================-->
                <section id="content">
                    <div class="indent-left">
                        <h3 class="p1">Nuestros Precios para servicios externos</h3>
                        <div class="wrapper">
                            <div class="col-1">
                                <ul class="price-list">
                                    <li><span>$ 34.00</span><a href="#">Soporte tecnico presencial</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 76.00</span><a href="#">Soporte tecnico a distancia.</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 12.00</span><a href="#">Soporte tecnico aereo</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 19.00</span><a href="#">Soporte tecnico auxiliar</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 57.00</span><a href="#">Soporte tecnico remoto</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 36.00</span><a href="#">Soporte en linea</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 84.00</span><a href="#">Asistencia telefonica</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 25.00</span><a href="#">Video llamada</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 53.00</span><a href="#">Acceso Remoto</a><strong>&nbsp;</strong></li>
                                </ul>
                            </div>
                            <div class="col-2">
                                <ul class="price-list">
                                    <li><span>$ 34.00</span><a href="#">Seguridad de datos</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 76.00</span><a href="#">Instalacion de software</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 12.00</span><a href="#">Recuperacion de datos</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 19.00</span><a href="#">Soporte tecnico mensual</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 57.00</span><a href="#">Soporte tecnico diario</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 36.00</span><a href="#">Soporte tecnico anual</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 84.00</span><a href="#">Soporte tecnico por asistencia</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 25.00</span><a href="#">Soporte por incidencia</a><strong>&nbsp;</strong></li>
                                    <li><span>$ 53.00</span><a href="#">soporte</a><strong>&nbsp;</strong></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <!--==============================aside================================-->
                <aside>
                    <div class="wrapper">
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Oferta Web</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page4-img1.jpg" alt="" /></figure>
                                        <h6 class="color-1">Soporte tecnico a distancia</h6>
                                        <p>Especial y descuento en los servicios y productos proporcionado por MR.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Oferta Print</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page4-img2.jpg" alt="" /></figure>
                                        <h6 class="color-1">Soporte tecnico Presencial</h6>
                                        <p>Especial y descuento en los productos proporcionado por MR.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-2">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Oferta Ensambladora</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page4-img3.jpg" alt="" /></figure>
                                        <h6 class="color-1">Soporte tecnico presencial</h6>
                                        <p>Descuento en los productos proporcionado por MR.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="block">
                        <asp:Label ID="UsuarioID" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="EmpresaID" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Nombres" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Apellidos" runat="server" Text="" Visible="false"></asp:Label>
                    </div> 
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
