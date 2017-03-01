using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Net.Mail;
using System.Net;

public partial class Menu_Contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
            EmpleadoID.Text = Session["id_empleado"].ToString();
            EmpresaID.Text = Session["id_Empresa"].ToString();
            txtEmail.Text = Session["email"].ToString();

            txtNombre.Text = Session["nombres"].ToString() +" "+ Session["apellidos"].ToString();
            Identidad.Text = Session["tipo"].ToString();
            
        }
        //else
        //{
        //    Session.Abandon();
        //    Response.Redirect("http://localhost:62968/login/inicio.aspx");
        //}
    }
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        limpiar();
    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage(txtEmail.Text, "mr.developer.rd@gmail.com");
        mail.Subject = txtAsunto.Text;
        mail.Body = txtMensaje.Text+"\n\n\n\n CLIENTE: "+txtNombre.Text+"\n\n TELEFONO: "+txtTelefono.Text;

        if (FileUpload1.HasFile)//file upload select or not
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
        }
        mail.IsBodyHtml = false;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;

        NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text,txtContrasena.Text);
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Send(mail); limpiar();
        string message = string.Empty;
        message = "Email enviado con éxito";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        
    }
    private void limpiar()
    {
        txtNombre.Text = ""; txtEmail.Text = ""; txtAsunto.Text = ""; ; txtTelefono.Text = ""; txtMensaje.Text = "";
    }
}