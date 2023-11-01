package tek.bdd.pages;

import org.openqa.selenium.By;

public class LoginPage {

    public final static By loginButton = By.linkText("Login");
    public final static By usernameField = By.id("username");
    public final static By passwordField = By.id("password");

    public final static By signButton = By.cssSelector(".css-jut409");
    public final static By titleHeader = By.xpath("//h2[contains(text(),'Customer Service Portal')]");
    //h2[contains(text(),'Customer Service Portal')]

    public final static By errorUserNotFound = By.xpath("//body/div[@id='root']/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]");
    public final static By errorPasswordNotMatched = By.xpath("//body/div[@id='root']/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]");

}
