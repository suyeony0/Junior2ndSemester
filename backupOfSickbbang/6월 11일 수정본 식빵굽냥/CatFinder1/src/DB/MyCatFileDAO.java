package DB;

import java.sql.*;

public class MyCatFileDAO {
	private ResultSet rs = null;
	private Connection conn = null;
	
	public MyCatFileDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/CatFinder?serverTimeZone=UTC"; // ��Ű��, ��Ʈ ����
			String dbID = "root"; // ��� ���̵� ����
			String dbPassword = "785200a"; // ��� ��й�ȣ ����
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String getRealName(String fileName) {
		String temp = "";
		String sql = "select realFileName from myCatFile where fileName = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileName);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				temp = rs.getString(1);
				return temp;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}
	
	public String getFileName(String realFileName) {
		String temp = "";
		String sql = "select fileName from myCatFile where realFileName = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, realFileName);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				temp = rs.getString(1);
				return temp;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return temp;
	}
}
