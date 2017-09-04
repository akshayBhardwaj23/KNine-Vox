using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advertisement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search_button_Click(object sender, EventArgs e)
    {
        string txt = inpt_search.Value;
        Response.Redirect("Search" + "-" + txt);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String s = Message1.InnerText;

            string[] s2 = s.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);

            Label3.Text = String.Empty;
            for (int j = 0; j < s2.Length; j++)
            {
                Label3.Text += s2[j] + "<br/>";
            }

            MailMessage mm = new MailMessage("akshaybhardwaj96@kninevox.com", "kninevox@gmail.com");
            mm.Subject = "Advertising Mail from WebSite";
            mm.Body = "<b>Sender Name: </b>" + Name1.Value + "<br/>" +
                "<b>Sender Email: </b>" + Email1.Value + "<br/>" +
                "<b>Website: </b>" + Website1.Value + "<br />" +
                "<b>Subject: </b>" + Subject1.Value + "<br />" +
                "<b>Company: </b>" + Company1.Value + "<br />" +
                "<b>Message: </b><br/>" + Label3.Text;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new System.Net.NetworkCredential("akshaybhardwaj96@kninevox.com", "@kshayBH1996");
            smtp.Port = 587;
            smtp.Host = "mail.kninevox.com";
            smtp.Send(mm);
            Name1.Value = String.Empty;
            Email1.Value = string.Empty;
            Website1.Value = String.Empty;
            Message1.InnerText = String.Empty;
            Label3.Text = "Thanks for contacting us, we will be with you shortly";
        }
        catch (Exception ex)
        {
            Label3.Text = "Sorry, something went wrong, please try again later";
            Name1.Value = String.Empty;
            Email1.Value = string.Empty;
            Website1.Value = String.Empty;
            Message1.InnerText = String.Empty;
        }
    }
}