package net.gondor.index.biz;

import java.util.List;

import net.gondor.index.dao.NewsDao;
import net.gondor.index.dao.NewsDaoImpl;
import net.gondor.index.vo.NewsVO;

public class NewsBizImpl implements NewsBiz{

	private NewsDao dao;
	
	public NewsBizImpl(){
		dao =new NewsDaoImpl();
	}
	
	@Override
	public List<NewsVO> getAllNewsesOf(int categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addNewNews(NewsVO news) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public NewsVO getNewAt(int newsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteNewsAt(int newsId) {
		// TODO Auto-generated method stub
		return false;
	}

}
