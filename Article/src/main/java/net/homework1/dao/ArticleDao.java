package net.homework1.dao;

import java.util.List;

import net.homework1.vo.ArticleVO;

public interface ArticleDao {
	public void insertArtcl(ArticleVO artclVO);
	public List<ArticleVO> getArtcls();
	public ArticleVO getArtclById(int artclId);
	public void updateArtcl(ArticleVO artclVO);
	public void deleteArtcl(int artclid);
	
}
