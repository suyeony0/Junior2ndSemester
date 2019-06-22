
import java.io.IOException;
import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DB.MyCatDAO;
import DB.MyCatImageDAO;

/**
 * Servlet implementation class MyCatWriteServlet
 */
@WebServlet("/MyCatWriteAction")
public class MyCatWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		ServletContext sc = request.getServletContext();

		String realPath = sc.getRealPath("myCatImage/");
		int imageSize = 1024 * 1024 * 10;
		String enc = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, realPath.trim(), imageSize, enc,
				new DefaultFileRenamePolicy());

		String fileName = (multi.getOriginalFileName("IMAGE") == null)? "" : multi.getOriginalFileName("IMAGE").trim();
		String realName = (multi.getFilesystemName("IMAGE") == null)? "" : multi.getFilesystemName("IMAGE").trim();
		String changedRealName = "";
		String fileType = "";
		if (!realName.equals("")) {
			int index = realName.lastIndexOf("."); // 확장자위치
			fileType = realName.substring(index, realName.length());
			changedRealName = realName.trim().replaceAll(" ", "") + fileType;
			File saved = new File(realPath + realName);

			if (saved != null) {
				File renamedFile = new File(realPath + changedRealName);
				saved.renameTo(renamedFile);

			}
		}
		// 마이캣 정보 받아오는 부분
		String name = (multi.getParameter("NAME") == null) ? "내용 없음" : multi.getParameter("NAME");
		String age = (multi.getParameter("AGE") == null) ? "내용 없음" : multi.getParameter("AGE");
		String attitude = (multi.getParameter("ATTITUDE") == null) ? "내용 없음" : multi.getParameter("ATTITUDE");

		int isNeutered = 0;
		if ((multi.getParameter("NEUTERED") == null)) {
			isNeutered = 0;
		}

		else {
			isNeutered = (multi.getParameter("NEUTERED").equals("예") || multi.getParameter("NEUTERED").equals("예.")) ? 1
					: 0;
		}
		String foodType = (multi.getParameter("FOOD_TYPE") == null) ? "내용 없음" : multi.getParameter("FOOD_TYPE");
		String comment = (multi.getParameter("COMMENT") == null) ? "내용 없음" : multi.getParameter("COMMENT");
		String location = (multi.getParameter("LOCATION") == null) ? "내용 없음" : multi.getParameter("LOCATION");

		MyCatDAO dao = new MyCatDAO();
		dao.insertMyCat(name, age, attitude, foodType, comment, isNeutered, location);
		int catId = dao.getLastId();
		dao.close();

		if (!realName.equals("")) {
			MyCatImageDAO fileDAO = new MyCatImageDAO();
			fileDAO.uploadImage(catId, fileName, changedRealName);
			fileDAO.close();
		}
		response.sendRedirect("MyCatViewAction");
	}

}
