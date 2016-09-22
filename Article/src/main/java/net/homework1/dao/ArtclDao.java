package net.homework1.dao;

import java.util.List;

import net.homework1.vo.ArtclVO;

public interface ArtclDao {
	public void insertArtcl(ArtclVO artclVO);
	public List<ArtclVO> getArtcls();
	public ArtclVO getArtclById(int artclId);
	public void updateArtcl(ArtclVO artclVO);
	public void deleteArtcl(int artclid);
	
}
