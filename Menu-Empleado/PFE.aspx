<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PFE.aspx.cs" Inherits="Menu_PF" %>

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
<body id="page3">
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
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" runat="server" CssClass="button-2" Text="Log out" OnClick="btnLogout_Click" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="HomeE.aspx">Inicio</a></li>
                                <li><a class="active" href="PFE.aspx">Perfil</a></li>
                                <li><a href="ServiciosE.aspx">Servicios</a></li>
                                <li><a href="TarifasE.aspx">Tarifas</a></li>
                                <li><a href="NosotrosE.aspx">Usuarios</a></li>
                                <li class="last"><a href="ContactoE.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================aside================================-->
                <div>
                    <h3 class="p1">Mis solicitudes</h3>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_solicitud" DataSourceID="Solicitudes" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id_solicitud" HeaderText="id_solicitud" ReadOnly="True" SortExpression="id_solicitud" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" ReadOnly="True" SortExpression="Cliente" />
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                            <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                            <asp:BoundField DataField="Especificacion_Servicio" HeaderText="Especificación" SortExpression="Especificacion_Servicio" />
                            <asp:BoundField DataField="Tipo_de_Servicio" HeaderText="Tipo de Servicio" SortExpression="Tipo_de_Servicio" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Fecha_Solicitud" HeaderText="Fecha Solicitud" SortExpression="Fecha_Solicitud" />
                            <asp:BoundField DataField="Fecha_Limite" HeaderText="Fecha Límite" SortExpression="Fecha_Limite" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="Solicitudes" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_solicitud], [Cliente], [Empresa], [Departamento], [Especificacion_Servicio], [Tipo de Servicio] AS Tipo_de_Servicio, [Descripcion], [Fecha_Solicitud], [Fecha_Limite], [Estado] FROM [Solicitud_EmpleadoADM] WHERE ([id_Empleado] = @id_Empleado)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EmpleadoID" Name="id_Empleado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

                
















                <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=WPC3;Initial Catalog=HelpDesk;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM Empleados WHERE Usuario = @usuario">
                    <SelectParameters>
                        <asp:Parameter Name="usuario" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Label ID="EmpleadoID" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="EmpresaID" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Nombres" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Apellidos" runat="server" Text="" Visible="false"></asp:Label>
                <%--<aside>
                    <div class="wrapper">
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Servicio Tecnica</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <h6 class="color-1">Sed ut perspiciatis unde omnis</h6>
                                        <p>Linior voluptatm accusantium doloremque laudantium totarem aperiam.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-1">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Telefonia</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <h6 class="color-1">Quasi architecto beatae vitae</h6>
                                        <p>Nemenim ipsam voluptatem quia voluptas aspernatur odit aut fugit.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="column-2">
                            <div class="box">
                                <div class="aligncenter">
                                    <h4>Redes</h4>
                                </div>
                                <div class="box-bg maxheight">
                                    <div class="padding">
                                        <h6 class="color-1">Sed quia consequuntur magni</h6>
                                        <p>Doloresqui ratione voluptatem sequi neunt Neque porro quisquam dolorem.</p>
                                    </div>
                                    <div class="aligncenter"><a class="button" href="#">Mas detalles</a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>--%>
                <!--==============================content================================-->
                <%--<section id="content">
                    <div class="wrapper">
                        <article class="col-1">
                            <div class="indent-left">
                                <h2>Bienvenido!</h2>
                                <h6 class="prev-indent-bot">Bienvenido a MR. </h6>
                                <p class="prev-indent-bot">
                                    MR. está formada por un equipo humano de jóvenes profesionales, con ilusión de participar en este proyecto empresarial y dispuesto a afrontar las necesidades que las nuevas tecnologías requieren.<br>
                                    Lo que en principio fue una pequeña tienda de informática se ha convertido en una empresa con un importante liderazgo empresarial en el sector del soporte tecnico, que en la actualidad abarca todo tipo de productos y servicios en el sector informático, dando una “Solución Global”.<br />
                                    MR. cuenta con representación en toda Republica Dominicana gracias a su expansión mediante franquicias informáticas que con el soporte de la sede central en Santo Domingo,
                                </p>
                            </div>
                        </article>
                        <article class="col-2">
                            <h3>Testimonios</h3>
                            <div class="wrapper indent-bot">
                                <figure class="img-indent">
                                    <img src="../images/page1-img1.jpg" alt="" />
                                </figure>
                                <div class="extra-wrap text-1">
                                    <div class="margin-top">
                                        <h6><a class="link color-2" href="#">Jaime Almeida</a></h6>
                                        Muy buen trabajo, exelente atension. 100% recomendado!!!
                                    </div>
                                </div>
                            </div>
                            <div class="wrapper">
                                <figure class="img-indent">
                                    <img src="../images/page1-img2.jpg" alt="" />
                                </figure>
                                <div class="extra-wrap text-1">
                                    <div class="margin-top">
                                        <h6><a class="link color-2" href="#">Wisnel Comas</a></h6>
                                        Me respondieron al momento, en verdad un buen servicio.
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="block"></div>
                </section>
            </div>
        </div>--%>
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
