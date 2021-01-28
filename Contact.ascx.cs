using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Welcome to J.A.G Auction ";
        myMessage.Body = TextBox2.Text;


        MailAddress senderAddress = new MailAddress("greciadelacruzmelo1@asa.edu");
        myMessage.From = senderAddress;

        MailAddress receiverAddress = new MailAddress(TextBox1.Text, "");
        myMessage.To.Add(receiverAddress);

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);

        System.Diagnostics.Debug.WriteLine("Sending");
        TextBox2.Text = "";
        TextBox1.Text = "";
        TextBox3.Text = "";

    }
}