package net.gondor.index.biz;

import java.util.List;

import net.gondor.index.vo.NewsVO;

public interface NewsBiz {
	public List<NewsVO> getAllNewsesOf(int categoryId);
	public boolean addNewNews(NewsVO news);
	public NewsVO getNewAt(int newsId);
	public boolean deleteNewsAt(int newsId);
}
