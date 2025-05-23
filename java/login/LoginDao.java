package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mysql.db.DbConnect;

public class LoginDao {

	DbConnect db = new DbConnect();

	public void insertMember(LoginDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into tourful_member(id, pw, name, email, birth, joindate) values(?,?,?,?,?,now())";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getBirth());

			pstmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}

	}

	public int chkDup(String inputId) {
		
		// 반환 값 : 사용가능  |   중복    |  글자수 제한	|   문자형태 제한	|  영문+숫자형태 제한
		//			  0 	    1		    2				3				4
		
		int flag = 0;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		if(inputId.length()<6||inputId.length()>16) {
			flag = 2;
			return flag;
		}
		else if(inputId.matches("[^a-zA-Z0-9]+")) {
			flag = 3;
			return flag;
		}
		else if(inputId.matches("[a-zA-Z]+")||inputId.matches("[0-9]+")) {
			flag = 4;
			return flag;
		}

		String sql = "select id from tourful_member where id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				flag = 1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}

		return flag;
	}

}
