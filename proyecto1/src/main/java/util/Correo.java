/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;
/**
 *
 * @author HP
 */
public class Correo {
    
    public static void enviarCorreo() throws  Exception {

        //authentication info
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", 587);
        properties.put("mail.transport.protect","smtp");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("yuriellcr@gmail.com","qmkijjfqwydypvju");
            }
        });
        //Start our mail message
        Message message = new MimeMessage(session);
        message.setSubject("INFORMACION  DE ITEM");

        String correo= "yuriellcr@estudiantec.cr";
        Address addressTo= new InternetAddress(correo);
        message.setRecipient(Message.RecipientType.TO, addressTo);
        MimeMultipart multipart= new MimeMultipart();
        //Text body part
        MimeBodyPart messageBodyPart= new MimeBodyPart();
        messageBodyPart = new MimeBodyPart();

        String nombre= "yuriell"; //atentamente 


        messageBodyPart.setContent("<h1>INFORMACION DEL ITEM</h1>", "text/html");
        messageBodyPart.setContent("<b1>Estimado "+nombre+", a continuacion se adjunta el pdf con los detalles del item seleccionado. </b1>", "text/html");
        MimeBodyPart pdf = new MimeBodyPart();

// attach the image file
        pdf.attachFile("C:\\Users\\HP\\Documents\\GitHub\\ATITUP\\proyecto1diseno\\aTitUpItem.pdf"); //AQUI VA EL PDF
        pdf.setFileName("aTitUpItem.pdf");
        multipart.addBodyPart(pdf);
        multipart.addBodyPart(messageBodyPart);
        message.setContent(multipart);
        Transport.send(message);
        System.out.println("Mensaje enviado");

    }
}
