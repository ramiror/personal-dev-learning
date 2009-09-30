package tests;

import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.WebDriver;

public class Config {
    
	static boolean reuse = true;
	static WebDriver driver = null;
	static Class<?extends WebDriver> driverClass = HtmlUnitDriver.class;
	
    static {
//	System.setProperty("webdriver.firefox.bin",
//		"/usr/local/data/firefox-3.0/firefox");
//	System.setProperty("webdriver.firefox.profile","selenium");
    }
    
    public static WebDriver getFirefoxDriver() {
        return getDriver( FirefoxDriver.class );
    }
    
    public static WebDriver getHTMLUnitDriver() {
        return getDriver( HtmlUnitDriver.class );
    }

    public static WebDriver getDriver() {
    	return getDriver( driverClass );
    }
    
    private static WebDriver getDriver( Class<?extends WebDriver> clazz ) {
		if ( reuse && driver != null )
		{
			return driver;
		}
		try {
			return driver = clazz.newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
