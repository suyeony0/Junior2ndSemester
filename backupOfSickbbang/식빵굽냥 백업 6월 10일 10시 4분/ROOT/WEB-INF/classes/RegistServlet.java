

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.UserDAO;

@WebServlet("/RegistAction")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public RegistServlet() {
		super();
	}
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String id = (String) request.getParameter("user-id");
		String password = (String) request.getParameter("password");
		String passwordConfirm = (String) request.getParameter("passwordConfirm");
		String email = (String) request.getParameter("Email");
		
		if(id == null || password == null || passwordConfirm == null) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('�Էµ��� ���� ������ �ֽ��ϴ�.');");
			out.println("history.back(); </script>");
			out.close();
		}
		
		else if(!password.equals(passwordConfirm)) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');");
			out.println("history.back(); </script>");
			out.close();
		}
		
		else {
			UserDAO dao = new UserDAO();
			int result = dao.regist(id, password, email);
			
			//��� ����
			if(result == 0) {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('ȸ������ ����(���)');");
				out.println("history.back(); </script>");
				out.close();
			}
			
			//�ִ� ���̵�
			else if(result == 2) {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('�̹� �����ϴ� ���̵� �Դϴ�.');");
				out.println("history.back(); </script>");
				out.close();
			}
			
			//����
			else if(result == 1) {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('ȸ�����Կ� ���� �߽��ϴ�.'); </script>");
				HttpSession session = request.getSession();
				session.setAttribute("user-id", id);
				response.sendRedirect("index.jsp");
				out.close();
			}
			dao.close();
		}
	}

}
