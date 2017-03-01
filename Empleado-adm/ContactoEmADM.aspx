<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactoEmADM.aspx.cs" Inherits="Menu_Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mr. Develover - Empleado ADM</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
    <link href="../Estilos/mis%20estilos.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" />
             <link href="styleEmADM.css" rel="stylesheet" type="text/css" media="screen" />

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
    <style type="text/css">
    </style>
</head>
<body id="page6">
    <div class="extra">
        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div class="indent">
                    <div class="row-top">
                        <div class="wrapper">
                            <h1><a href="HomeEmADM.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                            <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label></strong>
                        </div>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li><a href="HomeEmADM.aspx">Inicio</a></li>
                            <li><a href="PFEmADM.aspx">Perfil</a></li>
                            <li><a href="ServiciosEmADM.aspx">Servicios</a></li>
                            <li><a href="TarifasEmADM.aspx">Tarifas</a></li>
                            <li><a href="NosotrosEmADM.aspx">Usuarios</a></li>
                            <li class="last"><a class="active" href="ContactoEmADM.aspx">Contacto</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
            <!--==============================content================================-->
            <section id="content">
                <div class="wrapper">
                    <article class="col-1">
                        <div class="indent-left">
                            <h3 class="p1">Formulario del Contacto</h3>
                            <form action="#" method="post" enctype="multipart/form-data" runat="server">
                                <%--id="contact-form"--%>
                                <fieldset>
                                    <legend></legend>
                                    <label>
                                        <span class="text-form" style="font-size:larger"><strong>Nombre:</strong></span>
                                        <asp:TextBox ID="txtNombre" runat="server" placeholder=" Nombre Completo" Style="display: block" Font-Size="Medium" Height="30px" Width="400px"></asp:TextBox>
                                    </label>
                                    <label>
                                        <span class="text-form" style="font-size:larger"><strong>E-mail:</strong></span>
                                        <asp:TextBox ID="txtEmail" runat="server" placeholder=" ejemplo@ejemplo.com" AutoCompleteType="Email" TextMode="Email" Style="display: block" Font-Size="Medium" Height="30px" Width="400px"></asp:TextBox>
                                    </label>
                                    <label>
                                        <span class="text-form" style="font-size:larger"><strong>Contraseña:</strong></span>
                                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Style="display: block" Font-Size="Medium" Height="30px" Width="400px"></asp:TextBox>
                                    </label>
                                     <label>
                                        <span class="text-form" style="font-size:larger"><strong>Telefono:</strong></span>
                                        <asp:TextBox ID="txtTelefono" runat="server" placeholder=" +1 (000)000-0000" TextMode="Phone" Style="display: block" Font-Size="Medium" Height="30px" Width="400px"></asp:TextBox>
                                    </label>
                                    <label>
                                        <span class="text-form" style="font-size:larger"><strong>Asunto:</strong></span>
                                        <asp:TextBox ID="txtAsunto" runat="server" placeholder=" Ejemplo" Style="display: block" Font-Size="Medium" Height="30px" Width="400px"></asp:TextBox><br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style1" AllowMultiple="True"  />
                                    </label>
                                    <div class="auto-style2">
                                        <div class="text-form" style="font-size:larger"><strong>Mensaje:</strong></div>
                                        <div class="extra-wrap">
                                            <asp:TextBox ID="txtMensaje" TextMode="multiline" Style="resize: none" Width="600px" Height="150px" Wrap="true" runat="server" Font-Size="Larger" />
                                        </div>
                                    </div>
                                    <div class="buttons">

                                        <asp:Button ID="btnLimpiar" CssClass="button-2" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                                        <asp:Button ID="btnEnviar" CssClass="button-2" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />

                                    </div>

                                </fieldset>
                            </form>
                        </div>
                    </article>
                    <article class="col-2">
                        <h3 class="p1">Nuestros Filiales</h3>
                        <h6>Santiago de los Caballeros</h6>
                        <dl class="img-indent-bot">
                            <dt>Av. Juan Pablo Duarte, 51000</dt>
                            <dd><span>Telepono:</span><strong>+1 959 603 6035</strong></dd>
                            <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
                            <dd><span>Email:</span><strong><a href="#">mrsantiago@mrdevelover.com</a></strong></dd>
                        </dl>
                        <h6>Punta Cana</h6>
                        <dl class="img-indent-bot">
                            <dt>Av. La Cruz, D04</dt>
                            <dd><span>Telefono:</span><strong>+1 959 603 6035</strong></dd>
                            <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
                            <dd><span>Email:</span><strong><a href="#">mrpuntacana@mrdevelover.com</a></strong></dd>
                        </dl>
                        <h6>Santo Domingo</h6>
                        <dl>
                            <dt>Av. Luis F. Thomen, D88</dt>
                            <dd><span>Telefono:</span><strong>+1 959 603 6035</strong></dd>
                            <dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>
                            <dd><span>Email:</span><strong><a href="#">mrsdomingo@mrdevelover.com</a></strong></dd>
                        </dl>
                    </article>
                </div>
                <div class="block">
                    <asp:Label ID="EmpleadoID" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="EmpresaID" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </section>
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
    <!--coded by cheh-->

</body>

</html>
