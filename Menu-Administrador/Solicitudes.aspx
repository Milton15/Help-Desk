<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Solicitudes.aspx.cs" Inherits="Menu_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mr. Develover - ADMIN</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" />
    <link href="admstyle1.css" rel="stylesheet" type="text/css" media="screen" />

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
<body id="page1">
    <form id="Form1" runat="server">
        <div class="extra">
            <div class="main">

                <!--==============================header=================================-->

                <header>
                    <div class="indent">
                        <div class="row-top">
                            <div class="wrapper">
                                <h1><a href="HomeA.aspx">MR.Develever</a><asp:Label ID="Identidad" runat="server" Text="" Font-Size="Larger"></asp:Label></h1>
                                <strong class="support">
                                    <asp:Label ID="Label1" runat="server" Text=""> </asp:Label><asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="btnLogout_Click" CssClass="button-2" /></strong>
                            </div>
                        </div>
                        <nav>
                            <ul class="menu">
                                <li><a href="HomeA.aspx">Inicio</a></li>
                                <%--                                <li><a href="PF.aspx">Perfil</a></li>--%>
                                <li><a href="Clientes.aspx">Clientes</a></li>
                                <li><a href="Empleados.aspx">Empleados</a></li>
                                <li><a class="active" href="Solicitudes.aspx">Solicitudes</a></li>
                                <li class="last"><a href="ServiciosA.aspx">Servicios</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <!--==============================aside================================-->
                <div>
                    <h3 class="p1" style="padding-left: 40px">Solicitudes</h3>
                    <br />
                    <div style="padding-left:50px">
                        <asp:Label ID="Label2" runat="server" Text="Por empresa: " Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="DropEmpresa" runat="server" AutoPostBack="True" DataSourceID="Empresas" DataTextField="Empresa" DataValueField="id_Empresa" Font-Size="Larger"></asp:DropDownList>
                        <asp:SqlDataSource ID="Empresas" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Empresa], [Empresa] FROM [Empresas]"></asp:SqlDataSource>
                       
                         <asp:Label ID="Label3" runat="server" Text="Por Departamento: " Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="DropDepartamento" runat="server" AutoPostBack="True" DataSourceID="Departamentos" DataTextField="Departamento" DataValueField="id_Departamente" Font-Size="Larger"></asp:DropDownList>
                        <asp:SqlDataSource ID="Departamentos" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Departamente], [Departamento] FROM [Departamento] WHERE ([id_empresa] = @id_empresa)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropEmpresa" Name="id_empresa" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                        <asp:Label ID="Label4" runat="server" Text="Según Estado" Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="DropEstado" runat="server" AutoPostBack="True" DataSourceID="Estados" DataTextField="Descripcion" DataValueField="id_Estado" Font-Size="Larger"></asp:DropDownList>

                        <asp:SqlDataSource ID="Estados" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_Estado], [Descripcion] FROM [Estado]"></asp:SqlDataSource>
                    </div>
                </div>
                <br />
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_solicitud" DataSourceID="solicitudes" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id_solicitud" HeaderText="id_solicitud" ReadOnly="True" SortExpression="id_solicitud" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" ReadOnly="True" SortExpression="Cliente" />
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                            <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                            <asp:BoundField DataField="Especificacion_Servicio" HeaderText="Especificacion_Servicio" SortExpression="Especificacion_Servicio" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Fecha_Solicitud" HeaderText="Fecha_Solicitud" SortExpression="Fecha_Solicitud" />
                            <asp:BoundField DataField="Fecha_Limite" HeaderText="Fecha_Limite" SortExpression="Fecha_Limite" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            <asp:BoundField DataField="Empleado_Asignado_" HeaderText="Empleado_Asignado_" SortExpression="Empleado_Asignado_" ReadOnly="True" />
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
                    <asp:SqlDataSource ID="solicitudes" runat="server" ConnectionString="<%$ ConnectionStrings:HelpDeskConnectionString %>" SelectCommand="SELECT [id_solicitud], [Cliente], [Empresa], [Departamento], [Especificacion_Servicio], [Descripcion], [Fecha_Solicitud], [Fecha_Limite], [Estado], [Empleado Asignado ] AS Empleado_Asignado_ FROM [Solicitud_ADM] WHERE (([id_Empresa] = @id_Empresa) AND ([id_Departamento] = @id_Departamento) AND ([id_estado] = @id_estado))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropEmpresa" Name="id_Empresa" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="DropDepartamento" Name="id_Departamento" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="DropEstado" Name="id_estado" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <br />
                <!--==============================content================================-->

                <!--==============================footer=================================-->
                <footer>
                    <div class="main">
                        <div class="footer-bg">
                            <p class="prev-indent-bot">Copyright &copy; <a href="#">Milton</a> Todos los derechos Reservados | Diseñado por <a target="_blank" href="http://www.templatemonster.com/">www.mr.developer.com</a></p>
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
