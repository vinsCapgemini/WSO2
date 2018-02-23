import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter(); 
		
		String username=request.getParameter("username");  
		String password=request.getParameter("password");  

		if(username.equals(password)){
			if(password.equals("vins")){
				HttpSession session=request.getSession();  
				session.setAttribute("username",username);

				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(3*60);
				response.addCookie(userName);

				request.getRequestDispatcher("home.jsp").forward(request, response);
				System.out.println("Login effettuato con successo!");
			}
		}  
		else{  
			System.out.println("Username o password errata!");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			out.print("Username o password errata!");
		}  
		out.close();  
	}  
}  
