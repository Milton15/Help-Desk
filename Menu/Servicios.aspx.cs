using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu_Servicios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
            EmpresaID.Text = Session["id_empresa"].ToString();
            UsuarioID.Text = Session["id_usuario"].ToString();
            Nombres.Text = Session["nombre"].ToString();
            Apellidos.Text = Session["apellidos"].ToString();
            Identidad.Text = Session["tipo"].ToString();
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
        Session.Abandon();
        Response.Redirect("~/login/inicio.aspx");
    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        int id = 0;
        string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Crear_Solicitud"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TipoServicio",DropServicios.SelectedValue);
                    cmd.Parameters.AddWithValue("@Empresa",EmpresaID.Text.Trim());
                    cmd.Parameters.AddWithValue("@Departamento", DropDepartamento.SelectedValue);
                    cmd.Parameters.AddWithValue("@Especificacion", txtEspecificacion.Text.Trim());
                    cmd.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text.Trim());
                    cmd.Parameters.AddWithValue("@FechaLimite", txtFechaLimite.Text.Trim());
                    cmd.Parameters.AddWithValue("@FechaSolicitud", "2017-05-05");
                    cmd.Parameters.AddWithValue("@Estado", "2");
                    cmd.Parameters.AddWithValue("@Trabajo",RadioTrabajo.SelectedValue);
                    cmd.Parameters.AddWithValue("@Empleado", "6");
                    cmd.Parameters.AddWithValue("@Usuario",UsuarioID.Text.Trim());

                    cmd.Connection = con;
                    limpiar();
                    con.Open();
                    id = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
            string message = string.Empty;
            switch (id)
            {
                case -1:
                    message = "El nombre de usuario ya existe.\nPor favor, elija un nombre de usuario diferente.";
                    break;
                case -2:
                    message = "La dirección de correo electrónico suministrada ya se ha utilizado.";
                    break;
                default:
                    message = "Registro con éxito.\n Id. De usuario:" + id.ToString();
                    //Session["user"] = txtUsuario.Text + " ";
                    //Response.Redirect("http://localhost:62968/Menu/Home.aspx");
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        limpiar();
    }

    private void limpiar() {
        DropServicios.ClearSelection();
        DropDepartamento.ClearSelection();
        txtEspecificacion.Text = "";
        txtDescripcion.Text = "";
        txtFechaLimite.Text = "";
        RadioTrabajo.ClearSelection();
    }
}