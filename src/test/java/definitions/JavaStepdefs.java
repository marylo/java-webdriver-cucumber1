package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.util.Arrays;
import java.util.function.Predicate;

public class JavaStepdefs {

    @And("I calculate numbers")
    public void iCalculateNumbers() {
        int i=1;
        int j=3;
        System.out.println(10 % 8);

    }

    @And("I divide integers")
    public void iDivideIntegers() {
        int a=18;
        int b=2;
        System.out.println(a / b);
    }

    @And("I divide integers by a float")
    public void iDivideIntegersByAFloat() {
        int c=20;
        double d=9.9;


    }

    @And("I create two integers")
    public void iCreateAnd() {
        int num1;
        num1=25;
        int num2=5;
        System.out.println("sum = " + (num1 + num2));
        System.out.println("difference = " + (num1 - num2));
        System.out.println("quotient = " + (num1 / num2));
        System.out.println("product = " + (num1 * num2));

    }

    @And("I print url for {string} page")
    public void iPrintUrlForPage(String page) {
        if (page.equals("amazon")) {
            System.out.println("https://www.amazon.com/");
        }
        else if(page.equals("ebay")) {
            System.out.println("https://www.ebay.com/");
        }else {
            System.out.println("Unsupported page: " + page);
        }
    }

    @Then("I make groceryList")
    public void iMakeGroceryList() {
        String[] grocery={"milk", "bread", "butter"};
        {
            System.out.println("Grocery " + Arrays.toString(grocery));
            System.out.println("Grocery: " + grocery[0]);
            System.out.println("Grocery: " + grocery[1]);
            System.out.println("Grocery: " + grocery[2]);
        }
    }
}



