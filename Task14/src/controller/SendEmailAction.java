/*Author: Biqiu Li
 * 05/28/2015*/
package controller;

import java.io.IOException;

import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Model;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.mybeans.form.FormBeanFactory;

import formbeans.PathForm;

public class SendEmailAction extends Action {
    private FormBeanFactory<PathForm> formBeanFactory = FormBeanFactory
            .getInstance(PathForm.class);

   

    public SendEmailAction(Model model) {
       
    }

    public String getName() {

        return "sentEmail.do";
    }

    private void sendEmail(String mail, String username) {
        SimpleEmail email = new SimpleEmail();

        email.setTLS(true);
        email.setSSL(true);
        email.setHostName("smtp.gmail.com");
        email.setSmtpPort(465);

        email.setAuthentication("cfsteam5help@gmail.com", "helphelph");

        try {
            email.addTo(mail);
            email.setFrom("cfsteam5help@gmail.com");
            email.setSubject("Personal Information Sharing Preferences Update");
            email.setCharset("utf-8");
            // email.setContent(new MimeMultipart("text/html"));
            email.setMsg("Dear "
                    + username
                    + "\nThis email is being sent to you to notify and confirm that user "
                    + username
                    + "has requested an update for the following sharing preferences listed below:\n"
                    + "Customer information:\n"
                    + username
                    + "\n"
                    + mail
                    + "\n"
                    + "Sharing preference update:\n"
                    + "\u2022"
                    
                    + "\n"
                    + "please review this request and take one of the actions within the next business day:\n"
                    + "1. Update customer's sharing perferences as requested; or \n"
                    + "2. Close the request if customer cannot be identified; or \n"
                    + "3. Contact customer for additional information.\n "

                    + username
                    + ", this email only serves as a notification and no additional action is required from your side at this time.\n"
                    + "\nSincerely, \n Interactive Form Builder \n The One Consulting LLP.\n"
                    + "\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014End Message\u2014\u2014\u2014\u2014\u2014\u2014\n"
                    + "This is a system-generated message. Please do not reply to this email or via any hyperlinks contained therein.\n "
                    + "This message is for the designated recipient only and may contain privileged, proprietary, or otherwise private information."
                    + " If you have received it in error, please notify us immediately and delete the original."
                    + " Any other use of the email by you is prohibited.");
            email.send();

        } catch (EmailException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        }
    }

    public String perform(HttpServletRequest request,
            HttpServletResponse response) {

       
        SimpleEmail email = new SimpleEmail();

        email.setTLS(true);
        email.setSSL(true);
        email.setHostName("smtp.gmail.com");
        email.setSmtpPort(465);

        email.setAuthentication("cfsteam5help@gmail.com", "helphelph");
//        String option = null;
//        String opt1 = "\u2022" + request.getParameter("opt1") + ": "
//                + request.getParameter("select1") + "\n";
//        String opt2 = "\u2022" + request.getParameter("opt2") + ": "
//                + request.getParameter("select2") + "\n";
//        if (opt1 != null) {
//            option += opt1;
//        }
//        if(opt2 != null){
//            option += opt2;
//        }
        try {
            email.addTo("dorisleelqw128@gmail.com");
            email.setFrom("cfsteam5help@gmail.com");
            email.setSubject("Personal Information Sharing Preferences Update");
            email.setCharset("utf-8");
            // email.setContent(new MimeMultipart("text/html"));
            email.setMsg("Dear "
                    + " CMU"
                    + "\nThis email is being sent to you to notify and confirm that user Doris"
                    
                    + " has requested an update for the following sharing preferences listed below:\n"
                    + "Customer information:\n"
                    + "Doris"
                    + "\n"
                    + "dorisleelqw128@gmail.com"
                    + "\n"
                    + "Sharing preference update:\n"
                    + "Doris"
                    + "\n"
                    +"\u2022For our Marketing Purposes: Yes\n"
                    +"\u2022Apply changes to Joint Accounts (If applicable): Only me\n"
                    
                    + "please review this request and take one of the actions within the next business day:\n"
                    + "1. Update customer's sharing perferences as requested; or \n"
                    + "2. Close the request if customer cannot be identified; or \n"
                    + "3. Contact customer for additional information.\n "

                    + "Doris"
                    + ", this email only serves as a notification and no additional action is required from your side at this time.\n"
                    + "\nSincerely, \n Interactive Form Builder \n The One Consulting LLP.\n"
                    + "\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014End Message\u2014\u2014\u2014\u2014\u2014\u2014\n"
                    + "This is a system-generated message. Please do not reply to this email or via any hyperlinks contained therein.\n "
                    + "This message is for the designated recipient only and may contain privileged, proprietary, or otherwise private information."
                    + " If you have received it in error, please notify us immediately and delete the original."
                    + " Any other use of the email by you is prohibited.");
            email.send();

        } catch (EmailException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        }
        // sendEmail(request.getParameter("email"),
        // request.getParameter("username"), request.getParameter("select1"));
        // System.out.print(request.getParameter("td1"));
        // request.setAttribute("pwd", pwd);

        return "../success.jsp";
    }
}
