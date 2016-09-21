package net.homework1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.homework1.vo.ArtclVO;

public class ArtclDaoImpl implements ArtclDao {

	@Override
	public List<ArtclVO> getArtcls() {
		// TODO Auto-generated method stub
		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				throw new RuntimeException(e.getMessage(), e);
			}

			Connection conn= null;
			PreparedStatement pstmt= null;
			ResultSet rs= null;
			
			try {
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL","123");
				StringBuffer query = new StringBuffer();
				query.append(" SELECT ARTCL_ID, SBJ, CONT, TO_CHAR(CRT_DT,'YYYY/MM/DD HH24:MI:SS') CRT_DT FROM ARTCL ");
				pstmt = conn.prepareStatement(query.toString());
				rs = pstmt.executeQuery();
				
				List<ArtclVO> artcls = new ArrayList<ArtclVO>();
				ArtclVO artclVO = null; 
				
				while(rs.next()) {
					artclVO = new ArtclVO();
					artclVO.setArticleId(rs.getInt("ARTCL_ID"));
					artclVO.setSubject(rs.getString("SBJ"));
					artclVO.setContent(rs.getString("CONT"));
					artclVO.setCreateDate(rs.getString("CRT_DT"));
					artcls.add(artclVO);
				}
				
			return artcls;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				throw new RuntimeException(e.getMessage(), e);
			}
			finally{
				try {
					if(rs!=null){
					rs.close();}
				} catch (SQLException e) {
				}
				try {
					if(pstmt!=null){
					pstmt.close();}
				} catch (SQLException e) {
				}
				try {
					if(conn!=null){
					conn.close();}
				} catch (SQLException e) {
				}
			}
			
		
	}

}
