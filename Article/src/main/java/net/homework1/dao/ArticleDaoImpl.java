package net.homework1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.homework1.vo.ArticleVO;

public class ArticleDaoImpl implements ArticleDao {

	@Override
	/**
	 * DB 테이블에 있는 모든 데이터를 리스트로 반환한다.
	 */
	public List<ArticleVO> getArtcls() {
		// TODO Auto-generated method stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		}

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL", "123");
			StringBuffer query = new StringBuffer();
			query.append(" SELECT ARTCL_ID, SBJ, CONT, TO_CHAR(CRT_DT,'YYYY/MM/DD HH24:MI:SS') CRT_DT FROM ARTCL ");
			query.append(" ORDER	BY ARTCL_ID ASC ");
			pstmt = conn.prepareStatement(query.toString());
			rs = pstmt.executeQuery();

			List<ArticleVO> artcls = new ArrayList<ArticleVO>();
			ArticleVO artclVO = null;

			while (rs.next()) {
				artclVO = new ArticleVO();
				artclVO.setArticlId(rs.getInt("ARTCL_ID"));
				artclVO.setSubject(rs.getString("SBJ"));
				artclVO.setContent(rs.getString("CONT"));
				artclVO.setCreateDate(rs.getString("CRT_DT"));
				artcls.add(artclVO);
			}

			return artcls;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
			}
		}

	}

	/**
	 * 하나의 VO를 파라미터로 받아서 DB 테이블에 삽입한다.
	 */
	@Override
	public void insertArtcl(ArticleVO artclVO) {
		// TODO Auto-generated method stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		}

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL", "123");
			StringBuffer query = new StringBuffer();
			query.append(" INSERT INTO ARTCL	( 			");
			query.append("						ARTCL_ID	");
			query.append("						, SBJ		");
			query.append("						, CONT		");
			query.append("						, CRT_DT) 	");
			query.append(" 				VALUES	( 			");
			query.append("						ARTCL_ID_SEQ.NEXTVAL");
			query.append("						, ?					");
			query.append("						, ?					");
			query.append("						, SYSDATE)			");
			pstmt = conn.prepareStatement(query.toString());
			String sbj = artclVO.getSubject();
			String cont = artclVO.getContent();
			pstmt.setString(1, sbj);
			pstmt.setString(2, cont);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
			}
			try {
				
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
			}
		}
	}

	@Override
	public void updateArtcl(ArticleVO artclVO) {
		// TODO Auto-generated method stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		}

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL", "123");
			StringBuffer query = new StringBuffer();
			query.append(" UPDATE	ARTCL 		 ");
			query.append(" SET	SBJ = ?	  		 ");
			query.append("      ,CONT = ? 		 ");
			query.append(" WHERE	ARTCL_ID = ? ");
			pstmt = conn.prepareStatement(query.toString());
			int artclId = artclVO.getArticlId();
			String subject = artclVO.getSubject();
			String content = artclVO.getContent();
			pstmt.setInt(3, artclId);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
			}
		}


	}

	@Override
	public void deleteArtcl(int artclId) {
		// TODO Auto-generated method stub
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		}

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL", "123");
			StringBuffer query = new StringBuffer();
			query.append(" DELETE  				");
			query.append(" FROM	ARTCL			");
			query.append(" WHERE	ARTCL_ID=?	");
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setInt(1, artclId);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
			}
		}
	}

	@Override
	public ArticleVO getArtclById(int artclId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		}

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ARTCL", "123");
			StringBuffer query = new StringBuffer();
			query.append("  SELECT ARTCL_ID, SBJ, CONT, TO_CHAR(CRT_DT,'YYYY/MM/DD HH24:MI:SS') CRT_DT "
					+ "		FROM ARTCL "
					+ "		WHERE ARTCL_ID = ? ");
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setInt(1, artclId);
			rs = pstmt.executeQuery();

			ArticleVO artclVO = new ArticleVO();

			if (rs.next()) {
				artclVO.setArticlId(rs.getInt("ARTCL_ID"));
				artclVO.setSubject(rs.getString("SBJ"));
				artclVO.setContent(rs.getString("CONT"));
				artclVO.setCreateDate(rs.getString("CRT_DT"));
			}

			return artclVO;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e.getMessage(), e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
			}
		}		
	}
}
