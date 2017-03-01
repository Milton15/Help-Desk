using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu_PF : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
            TextBox1.Text = Session["Email"].ToString();
            EmpleadoID.Text = Session["id_Empleado"].ToString();
            EmpresaID.Text = Session["id_empresa"].ToString();
            Nombres.Text = Session["Nombres"].ToString();
            Apellidos.Text = Session["Apellidos"].ToString();
            Identidad.Text = Session["tipo"].ToString();
            //consultar();
        }
        //else
        //{
        //    Session.Abandon();
        //    Response.Redirect("http://localhost:62968/login/inicio.aspx");
        //}
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        //Session.Abandon();
        Response.Redirect("~/login/inicio.aspx");
    }

    //private void consultar()
    //{
    //    SqlDataSource1.SelectParameters["usuario"].DefaultValue = Label1.Text;
    //    SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
    //    SqlDataReader datos;
    //    datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    //    if (datos.Read())
    //    {
    //        TextBox1.Text = datos["Email"].ToString();
    //        Session["email"] = TextBox1.Text;

    //        EmpleadoID.Text = datos["id_Empleado"].ToString();
    //        Session["id_empleado"] = EmpleadoID.Text;

    //        EmpresaID.Text = datos["id_empresa"].ToString();
    //        Session["id_Empresa"] = EmpresaID.Text;

    //        Nombres.Text = datos["Nombres"].ToString();
    //        Session["nombres"] = Nombres.Text;

    //        Apellidos.Text = datos["Apellidos"].ToString();
    //        Session["apellidos"] = Apellidos.Text;
    //    }
    //    else
    //    {
    //        TextBox1.Text = "nadaaa";
    //    }
    //}
}