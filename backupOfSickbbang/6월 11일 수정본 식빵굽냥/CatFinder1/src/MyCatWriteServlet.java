

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import properties.*;
import DB.*;
/**
 * Servlet implementation class MyCatWriteServlet
 */
@WebServlet("/MyCatWriteAction")
public class MyCatWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = (request.getParameter("NAME") == null)? "" : request.getParameter("NAME");
		String age = (request.getParameter("AGE") == null)? "" : request.getParameter("AGE");
		String attitude = (request.getParameter("ATTITUDE") == null)? "" : request.getParameter("ATTITUDE");
		int isNeutered = (request.getParameter("IS_NEUTERED").equals("¿¹") || request.getParameter("IS_NEUTERED").equals("¿¹."))? 1 : 0;
		String foodType = (request.getParameter("FOOD_TYPE") == null)? "" : request.getParameter("FOOD_TYPE");
		String comment = (request.getParameter("COMMENT") == null)? "" : request.getParameter("COMMENT");
		
		MyCatDAO dao = new MyCatDAO();
		dao.insertMyCat(name, age, attitude, foodType, comment, isNeutered);
		dao.close();
		
		
	}

}
