package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
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

}
