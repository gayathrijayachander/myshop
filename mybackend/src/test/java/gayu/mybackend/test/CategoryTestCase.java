package gayu.mybackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import gayu.mybackend.dao.CategoryDAO;
import gayu.mybackend.dto.Category;

public class CategoryTestCase {

	
private static AnnotationConfigApplicationContext context;
	
	
	private static CategoryDAO categoryDAO;
	
	
	private Category category;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("gayu.mybackend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
/*	@Test
	public void testAddCategory() {
		
		category = new Category();
		
		category.setName("mobile");
		category.setDescription("this is a mobile description");
		category.setImageURL("CAT_1.png");
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
		
		
	}
	*/
	
	
	/*@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(1);
		
		
		assertEquals("Successfully fetched a single category from the table!","mobile",category.getName());
		
		
	}
	
	
	*/
/*	@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(1);
		
		category.setName("iphone");
		
		assertEquals("Successfully updated a single category in the table!",true,categoryDAO.update(category));
		
		
	}*/
	
/*	@Test
	public void testListCategory() {
					
		assertEquals("Successfully fetched the list of categories from the table!",1,categoryDAO.list().size());
		
		
	}
	*/
	
	@Test
	public void testCRUDCategory() {
		
		// add operation
		category = new Category();
		
		category.setName("Laptop");
		category.setDescription("This is some description for laptop!");
		category.setImageURL("CAT_2.png");
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
		
		
		category = new Category();
		
		category.setName("iwatch");
		category.setDescription("This is some description for watch");
		category.setImageURL("CAT_3.png");
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));

		
		// fetching and updating the category
				category = categoryDAO.get(1);
				
				category.setName("ipad");
				
				assertEquals("Successfully updated a single category in the table!",true,categoryDAO.update(category));
				
				// delete the category
				assertEquals("Successfully deleted a single category in the table!",true,categoryDAO.delete(category));
				
				//fetching the list
				assertEquals("Successfully fetched the list of categories from the table!",1,categoryDAO.list().size());		
						
				
	}
	
}
