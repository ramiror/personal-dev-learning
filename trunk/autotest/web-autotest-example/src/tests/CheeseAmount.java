package tests;

import java.text.ParseException;
import org.openqa.selenium.WebDriver;
import pages.sandbox.google.Results;
import pages.sandbox.google.Search;

public class CheeseAmount implements Test {
    static public void main(String[] args) throws ParseException {
        Amounts amounts = new Amounts();
        amounts.setSearchTerm( "Cheese!" );	
        System.out.println("Amount of cheeses: " + amounts.amount());
//        System.out.println("As a number      : " + results.count());
    }
}
