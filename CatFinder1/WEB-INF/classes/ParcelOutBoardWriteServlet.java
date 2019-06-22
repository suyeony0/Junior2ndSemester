

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DB.FreeBoardDAO;
import properties.*;

/**
 * Servlet implementation class FreeBoardWriteServlet
 */
@WebServlet("/ParcelOutBoardWriteAction")
public class ParcelOutBoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		ServletContext sc = request.getServletContext();

		String realPath = sc.getRealPath("myCatImage/");
		int imageSize = 1024 * 1024 * 10;
		String enc = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, realPath, imageSize, enc, new DefaultFileRenamePolicy());

		String image = multi.getParameter("IMAGE");
		String fileName = multi.getOriginalFileName("IMAGE");
		String realName = multi.getFilesystemName("IMAGE");
		
		String writer = "";
		String title = "";
		String content = "";
		
		HttpSession session = request.getSession();
		writer = (String)session.getAttribute("LOGIN_ID");
		title = (request.getParameter("TITLE") == null)? "" : request.getParameter("TITLE");
		content = (request.getParameter("CONTENT") == null)? "" : request.getParameter("CONTENT");
		
		
		if(title.equals("") || content.equals("")) {
			response.sendRedirect("ResultForm/FreeBoardWriteResult.jsp?RESULT=FAIL");
		}
		
		else {
			FreeBoardDAO dao = new FreeBoardDAO();
			dao.writeBoard(title, content, writer);
			dao.close();
			response.sendRedirect("FreeBoardViewAction");
		}
	}

}
