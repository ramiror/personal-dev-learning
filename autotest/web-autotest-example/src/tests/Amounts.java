package tests;

import org.openqa.selenium.WebDriver;

import pages.sandbox.google.Results;
import pages.sandbox.google.Search;

public class Amounts implements Test, Fixture {
	private WebDriver driver = Config.getDriver();
	private String searchTerm = null;	
	
	public void setSearchTerm( String term ) {
		this.searchTerm = term;
	}
	
	public String amount() {
        Search search = new Search(driver);
        Results results = search.search( searchTerm );
	
        return results.amount();
	}
}
