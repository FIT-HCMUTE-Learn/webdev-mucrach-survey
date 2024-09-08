package murach.email;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import murach.business.User;
import murach.inter.UserEnum;
import murach.data.UserDB;

import java.io.IOException;
import java.sql.Date;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        if (action.equals("join")) {
            url = "/index.jsp";
        } else if (action.equals("add")) {
            // Get parameters from the request
            String firstName = request.getParameter("first-name");
            String lastName = request.getParameter("last-name");
            String email = request.getParameter("email");
            Date birth = Date.valueOf(request.getParameter("birth"));

            // Get radio button value
            String hearParam = request.getParameter("hear");
            UserEnum.Hear hear = switch (hearParam) {
                case "search" -> UserEnum.Hear.SEARCH_ENGINE;
                case "mouth" -> UserEnum.Hear.WORD_OF_MOUTH;
                case "social" -> UserEnum.Hear.SOCIAL_MEDIA;
                case "other" -> UserEnum.Hear.OTHER;
                default -> UserEnum.Hear.NON;
            };

            // Get checkbox values
            boolean receiveLike = request.getParameter("like") != null;
            boolean receiveSend = request.getParameter("send") != null;

            // Get combo box value
            String contactParam = request.getParameter("receive");
            UserEnum.Contact contact = switch (contactParam) {
                case "email_portal" -> UserEnum.Contact.EMAIL_OR_POSTAL;
                case "email" -> UserEnum.Contact.PHONE;
                case "portal" -> UserEnum.Contact.IN_PERSON;
                default -> UserEnum.Contact.NON;
            };

            // Create User object
            User user = new User(firstName, lastName, email, birth, hear, receiveLike, receiveSend, contact);

            // Validate the parameters
            if (firstName == null || lastName == null || email == null || firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                request.setAttribute("message", "Please fill out all fields.");
                url = "/index.jsp";
            } else {
                request.setAttribute("message", "");
                url = "/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
