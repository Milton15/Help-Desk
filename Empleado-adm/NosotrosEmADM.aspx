﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NosotrosEmADM.aspx.cs" Inherits="Menu_Nosotros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mr. Develover - Empleado ADM</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
    <link href="styleEmADM.css" rel="stylesheet" type="text/css" media="screen" />
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
<body id="page5">
    <form runat="server">
        <div class="extra">
            <div class="main">
                <!--==============================header=================================-->
                <header>
                    <div class="indent">
                        <div class="row-top">
                            <div class="wrapper">
                                <h1><a href="HomeEmADM.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                                <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" runat="server" CssClass="button-2" Text="Log out" OnClick="btnLogout_Click" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="HomeEmADM.aspx">Inicio</a></li>
                                <li><a href="PFEmADM.aspx">Perfil</a></li>
                                <li><a href="ServiciosEmADM.aspx">Servicios</a></li>
                                <li><a href="TarifasEmADM.aspx">Tarifas</a></li>
                                <li><a class="active" href="NosotrosEmADM.aspx">Usuarios</a></li>
                                <li class="last"><a href="ContactoEmADM.aspx">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================content================================-->

                <div>
                    <br />
                    <h3 class="p1" style="padding:20px 40px">Usuarios</h3>
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Usuario" DataSourceID="Usuarios" AutoGenerateEditButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id_Usuario" HeaderText="id_Usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_Usuario" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Fecha_Creacion" HeaderText="Fecha_Creacion" SortExpression="Fecha_Creacion" />
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
                    <asp:SqlDataSource ID="Usuarios" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Usuario], [Nombre], [Apellidos], [Cedula], [Telefono], [Usuario], [Email], [Fecha_Creacion] FROM [Usuarios] WHERE ([id_empleado] = @id_empleado)"
                        UpdateCommand="UPDATE [Usuarios] SET [Nombre]=@nombre, [Apellidos]=@apellidos, [Telefono]=@telefono, [Email]=@email WHERE [id_Usuario] = @id_usuario">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EmpleadoID" Name="id_empleado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>

                <br />
                <div>
                    <h3 class="p1" style="padding-left: 40px">Crear Usuario</h3>
                    <div style="padding: 20px 40px;">
                        <span style="font-size: larger"><strong>Nombres:</strong></span>
                        <asp:TextBox ID="txtNombre" runat="server" Font-Size="Larger"></asp:TextBox>

                        <span style="font-size: larger; padding-left:15px"><strong>Apellidos:</strong></span>
                        <asp:TextBox ID="txtApellidos" runat="server" Font-Size="Larger"></asp:TextBox>

                        <span style="font-size: larger; padding-left:25px""><strong>Cédula:</strong></span>
                        <asp:TextBox ID="txtCedula" runat="server" Font-Size="Larger"></asp:TextBox>
                    </div>
                    <div style="padding: 20px 40px;">
                        <span style="font-size: larger; padding-right:25px"><strong>Email:</strong></span>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Font-Size="Larger"></asp:TextBox>

                        <span style="font-size: larger; padding-left:15px"><strong>Empresa:</strong></span>
                        <asp:DropDownList ID="DropEmpresa" runat="server" DataSourceID="Empresas" DataTextField="Empresa" DataValueField="id_Empresa" Font-Size="Larger"></asp:DropDownList>

                        <asp:SqlDataSource ID="Empresas" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Empresa], [Empresa] FROM [Empresas] WHERE ([id_Empresa] &lt;&gt; @id_Empresa)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="id_Empresa" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <span style="font-size: larger"><strong>Teléfono:</strong></span>
                        <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone" Font-Size="Larger"></asp:TextBox>
                    </div>
                    <div style="padding: 20px 40px;">
                        <span style="font-size: larger; padding-right:7px"><strong>Usuario:</strong></span>
                        <asp:TextBox ID="txtUsuario" runat="server" Font-Size="Larger"></asp:TextBox>

                        <span style="font-size: larger; padding-left:15px"><strong>Contraseña:</strong></span>
                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Font-Size="Larger"></asp:TextBox>
                    </div>
                    <div style="padding-left:700px">
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="button-2" OnClick="btnCancelar_Click" />
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="button-2" OnClick="btnGuardar_Click" />
                    </div>
                </div>
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
