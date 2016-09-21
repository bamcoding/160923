package net.gondor.vo;
/**
 * @author 206-014
 *
 */
public class CategoryVO {

	private int categoryId;
	private String categoryName;
	private int parentCategoryId;
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryid) {
		this.categoryId = categoryid;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getParentCategoryId() {
		return parentCategoryId;
	}
	public void setParentCategoryId(int parentCategoryid) {
		this.parentCategoryId = parentCategoryid;
	}
	
	
}