import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/result")
public class Result extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String gmail = req.getParameter("gmail");
        String password = req.getParameter("password");
        String mob = req.getParameter("mob");
        String dob = req.getParameter("dob");
        String college = req.getParameter("college");
        String add = req.getParameter("add");

        req.setAttribute("name", name);
        req.setAttribute("gmail", gmail);
        req.setAttribute("password", password);
        req.setAttribute("mob", mob);
        req.setAttribute("dob", dob);
        req.setAttribute("college", college);
        req.setAttribute("add", add);

        req.getRequestDispatcher("/login.html").forward(req, resp);
    }
}
