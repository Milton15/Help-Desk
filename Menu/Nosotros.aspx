<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nosotros.aspx.cs" Inherits="Menu_Nosotros" %>

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
<body id="page5">
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
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" runat="server" CssClass="button-2" Text="Log out" OnClick="btnLogout_Click" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="Home.aspx">Inicio</a></li>
                                <li><a href="PF.aspx">Perfil</a></li>
                                <li><a href="Servicios.aspx">Servicios</a></li>
                                <li><a href="Tarifas.aspx">Tarifas</a></li>
                                <li><a class="active" href="Nosotros.aspx">Nosotros</a></li>
                                <li class="last"><a href="Contacto.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================content================================-->
                <section id="content">
                    <div class="indent-left">
                        <h3 class="p1">Nuestro Staff</h3>
                        <div class="wrapper">
                            <figure class="img-indent">
                                <img src="../images/page5-img1.jpg" alt="" />
                            </figure>
                            <div class="extra-wrap">
                                <p>MR. está formada por un equipo humano de jóvenes profesionales, con ilusión de participar en este proyecto empresarial y dispuesto a afrontar las necesidades que las nuevas tecnologías requieren.</p>
                                <a class="button-2" href="#">Leer mas</a>
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
                                    <h4>Milton Ojeda</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page5-img2.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Programador y Desarrollador Web.</h6>
                                        <p>Desarrollador web con la excelencia como valor principal.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Robert Javier</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page5-img3.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Programador y Analista De sistemas.</h6>
                                        <p>programador con la perfeccion como valor principal.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-2">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Dickson Castillo</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <figure class="p2">
                                            <img src="../images/page5-img4.jpg" alt="" />
                                        </figure>
                                        <h6 class="color-1">Administrador De Servidores</h6>
                                        <p>Puedes tener la confianza de dejar tu informacion en sus manos.</p>
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
