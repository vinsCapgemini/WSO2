import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            HttpSession session=request.getSession();  
            session.invalidate();
            response.sendRedirect("index.jsp");
            
//            request.getRequestDispatcher("index.html").forward(request, response);
            
            System.out.println("Logout effettuato con successo!");
            out.print("Logout effettuato con successo!");  
            out.close();  
            
            
    }  
}  