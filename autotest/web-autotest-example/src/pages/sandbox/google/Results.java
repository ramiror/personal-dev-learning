package pages.sandbox.google;

import java.text.NumberFormat;
import java.text.ParseException;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import pages.Page;

public class Results extends Page {

    public Results(WebDriver driver) {
        super(driver);
    }
    
    public String amount() {
    	WebElement amountHeader = driver_.findElement(By.xpath("/html/body/div[2]/p"));
    	String amountHeaderText = amountHeader.getText();
    	amountHeaderText = amountHeaderText.replaceAll( "Results .* - .* of about ", "");
    	amountHeaderText = amountHeaderText.replaceAll( " for .*$", "");
    	return amountHeaderText;
    }
    
    public Number count() throws ParseException {
        NumberFormat nf = NumberFormat.getInstance();
        return nf.parse( this.amount() );        
    }
}
