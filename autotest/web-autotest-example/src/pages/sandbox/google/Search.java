package pages.sandbox.google;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import pages.Page;

public class Search extends Page {

    public Search(WebDriver driver) {
	super(driver);
	// TODO Auto-generated constructor stub
    }

    public Results search( String pattern) {
	driver_.get("http://www.google.com/intl/en/");

        // Find the text input element by its name
        WebElement element = driver_.findElement(By.name("q"));

        // Enter something to search for
        element.sendKeys("Cheese!");

        // Now submit the form. WebDriver will find the form for us from the element
        element.submit();

	return new Results(driver_);
    }
}
