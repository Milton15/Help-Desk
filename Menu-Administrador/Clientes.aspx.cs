using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        int id = 0;
        string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Crear_UsuarioEM"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                  
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text.Trim());
                    cmd.Parameters.AddWithValue("@Apellidos", txtApellidos.Text.Trim());
                    cmd.Parameters.AddWithValue("@Cedula", txtCedula.Text.Trim());
                    cmd.Parameters.AddWithValue("Empresa", DropEmpresa.SelectedValue);
                    cmd.Parameters.AddWithValue("@Telefono", txtTelefono.Text.Trim());
                    cmd.Parameters.AddWithValue("@Usuario", txtUsuario.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contrasena", txtContrasena.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Fecha_Creacion", "1997-01-15");
                    cmd.Parameters.AddWithValue("@Empleado","1");

                    cmd.Connection = con;

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
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        txtNombre.Text = "";
        txtApellidos.Text = "";
        txtCedula.Text = "";
        txtEmail.Text = "";
        txtTelefono.Text = "";
        DropEmpresaA.ClearSelection();
        txtUsuario.Text = "";
        txtContrasena.Text = "";
    }
}