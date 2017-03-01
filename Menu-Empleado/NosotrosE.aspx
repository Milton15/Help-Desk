<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NosotrosE.aspx.cs" Inherits="Menu_Nosotros" %>

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
    <style type="text/css">
        .auto-style1 {
            margin-right: 1px;
        }
    </style>
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
                                <h1><a href="HomeE.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                                <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" runat="server" CssClass="button-2" Text="Log out" OnClick="btnLogout_Click" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="HomeE.aspx">Inicio</a></li>
                                <li><a href="PFE.aspx">Perfil</a></li>
                                <li><a href="ServiciosE.aspx">Servicios</a></li>
                                <li><a href="TarifasE.aspx">Tarifas</a></li>
                                <li><a class="active" href="NosotrosE.aspx">Usuarios</a></li>
                                <li class="last"><a href="ContactoE.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================content================================-->

                <div>
                    <h3 class="p1">Mis Usuarios Atendidos</h3>
                    <br />
                    <div style="align-content:center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Usuarios" AutoGenerateEditButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="4" ForeColor="Black" GridLines="Vertical" CssClass="auto-style1">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" ReadOnly="True" SortExpression="Cliente" />
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                            <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                            <asp:BoundField DataField="id_Empleado" HeaderText="ID Empleado" SortExpression="id_Empleado" />
                            <asp:BoundField DataField="Tipo_de_Servicio" HeaderText="Tipo de Servicio" SortExpression="Tipo_de_Servicio" />
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
                    <asp:SqlDataSource ID="Usuarios" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [Cliente], [Empresa], [Departamento], [id_Empleado], [Tipo de Servicio] AS Tipo_de_Servicio FROM [Solicitud_EmpleadoADM] WHERE ([id_Empleado] = @id_Empleado)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EmpleadoID" Name="id_Empleado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                    </div>

                <%--<div style="border:1px solid red;">
                    <h1>Crear Usuario</h1>

                    <asp:Label ID="Label2" runat="server" Text="Nombres: "></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

                    <asp:Label ID="Label3" runat="server" Text="Apellidos: "></asp:Label>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>

                    <asp:Label ID="Label4" runat="server" Text="Cédula: "></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>

                    <asp:Label ID="Label9" runat="server" Text="Email: "></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>

                    <asp:Label ID="Label5" runat="server" Text="Empresa: "></asp:Label>
                    <asp:DropDownList ID="DropEmpresa" runat="server" DataSourceID="Empresas" DataTextField="Empresa" DataValueField="id_Empresa"></asp:DropDownList>

                    <asp:SqlDataSource ID="Empresas" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Empresa], [Empresa] FROM [Empresas] WHERE ([id_Empresa] &lt;&gt; @id_Empresa)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="id_Empresa" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:Label ID="Label6" runat="server" Text="Teléfono: "></asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox>

                    <asp:Label ID="Label7" runat="server" Text="Usuario: "></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>

                    <asp:Label ID="Label8" runat="server" Text="Contraseña: "></asp:Label>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="button-2" OnClick="btnCancelar_Click" />
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="button-2" OnClick="btnGuardar_Click" />

                </div>--%>
                <asp:Label ID="EmpleadoID" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="EmpresaID" runat="server" Text="" Visible="false"></asp:Label>
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
                    <div class="block"></div>
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
