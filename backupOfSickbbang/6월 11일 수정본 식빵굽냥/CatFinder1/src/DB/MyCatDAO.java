package DB;

import properties.*;
import java.sql.*;

public class MyCatDAO {
	private Connection conn = null;
	private ResultSet rs = null;
	
	public MyCatDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/CatFinder?serverTimeZone=UTC"; // 스키마, 포트 설정
			String dbID = "root"; // 디비 아이디 설정
			String dbPassword = "785200a"; // 디비 비밀번호 설정
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public MyCatVO getMyCat(int id) {
		String sql = "select * from myCatInfo where id = ?";
		MyCatVO vo = new MyCatVO();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(id);
				vo.setAttitude(rs.getString("attitude"));
				vo.setAge(rs.getString("age"));
				vo.setComment(rs.getString("comment"));
				vo.setFoodType(rs.getString("foodType"));
				vo.setName(rs.getString("name"));
				vo.setNeutered(rs.getBoolean("isNeutered"));
				
				return vo;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return vo;
	}
	
	public int insertMyCat(String name, String age, String attitude, String foodType, String comment, int isNeutered) {
		String sql = "insert into myCatInfo(name, age, attitude, isNeutered, foodType, comment) values("
				+ "?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, age);
			pstmt.setString(3, attitude);
			pstmt.setInt(4, isNeutered);
			pstmt.setString(5, foodType);
			pstmt.setString(6, comment);
			
			int result = pstmt.executeUpdate();
			return result;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;
	}
	
	public int close() {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 1;
	}
	
}
