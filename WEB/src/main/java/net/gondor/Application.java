package net.gondor;

import java.util.List;

import net.gondor.dao.NewsDao;
import net.gondor.dao.NewsDaoImpl;
import net.gondor.vo.CategoryVO;

public class Application {
public static void main(String[] args) {
	NewsDao n = new NewsDaoImpl();
	List<CategoryVO> c = n.getAllCategories();
	System.out.println("테이블");
	for(CategoryVO d:c){
	System.out.println(d.getCategoryId() +" | "+ d.getCategoryName() +" | "+ d.getParentCategoryId());
	}
	}
}
