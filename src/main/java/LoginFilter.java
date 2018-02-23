import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class LoginFilter implements Filter {

	protected ServletContext servletContext;

	public void init(FilterConfig filterConfig) {
	}

	public void doFilter(
			ServletRequest req, ServletResponse res, FilterChain chain)
					throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession(false);
		String loginURI = request.getContextPath() + "/LoginServlet";

		boolean loggedIn = session != null && session.getAttribute("username") != null;
		boolean loginRequest = request.getRequestURI().equals(loginURI);

		if (loggedIn || loginRequest) {
			chain.doFilter(request, response);
		} else {
			response.sendRedirect(loginURI);
		}

		//		HttpServletRequest req = (HttpServletRequest)request;
		//		HttpServletResponse resp = (HttpServletResponse)response;
		//		
		//		String loginURL = req.getContextPath() + "/LoginServlet";
		//
		//		HttpSession session = req.getSession();// don't create if it doesn't exist
		//		if(session != null && !session.isNew()) {
		//			System.out.println("AAAAAAAAAAAAA");
		//			chain.doFilter(request, response);
		//		} else {
		//			System.out.println("BBBBBBBBBBBBB");
		//			resp.sendRedirect(loginURL);
		//		}


		//		if (!isAuth()) {
		//			resp.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		//			return; //break filter chain, requested JSP/servlet will not be executed
		//		}
		//
		//		//propagate to next element in the filter chain, ultimately JSP/ servlet gets executed
		//		chain.doFilter(request, response);        
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

}