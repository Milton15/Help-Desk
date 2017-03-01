using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]!= null)
        {
            Label1.Text = Session["user"].ToString();
            Identidad.Text = Session["tipo"].ToString();
            consultar();
            
        }
        //else
        //{
            //Session.Abandon();
        //    Response.Redirect("http://localhost:62968/login/inicio.aspx");
        //}
        
        
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Abandon();
        Response.Redirect("~/login/inicio.aspx");
    }
    private void consultar()
    {
        SqlDataSource1.SelectParameters["usuario"].DefaultValue = Label1.Text;
        SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
        SqlDataReader datos;
        datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (datos.Read())
        {
            Email.Text = datos["Email"].ToString();
            Session["email"] = Email.Text;

            UsuarioID.Text = datos["id_Usuario"].ToString();
            Session["id_usuario"] = UsuarioID.Text;

            EmpresaID.Text = datos["id_empresa"].ToString();
            Session["id_Empresa"] = EmpresaID.Text;

            Nombres.Text = datos["Nombre"].ToString();
            Session["nombre"] = Nombres.Text;

            Apellidos.Text = datos["Apellidos"].ToString();
            Session["apellidos"] = Apellidos.Text;
        }
        else
        {
            Email.Text = "nadaaa";
        }
    }
}