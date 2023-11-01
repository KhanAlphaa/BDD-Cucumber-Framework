package tek.bdd.utility;

import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import tek.bdd.base.BaseSetup;


import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class SeleniumUtility extends BaseSetup {

    private WebDriverWait getWait() {

        return new WebDriverWait(getDriver(), Duration.ofMinutes(1));
    }

    private WebElement waitUntilVisibilityOfElement(By locator) {
        return getWait().until(ExpectedConditions.visibilityOfElementLocated(locator));
    }

    private WebElement waitUntilElementClickable(By locator) {
        return getWait().until(ExpectedConditions.elementToBeClickable(locator));
    }

    private List<WebElement> waitUntilVisibilityOfAllElement(By locator) {
        return getWait().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(locator));
    }


    public void clickOnElement(By locator) {

        waitUntilElementClickable(locator).click();
    }

    public String getElementText(By locator) {
        WebElement element = waitUntilVisibilityOfElement(locator);
        return element.getText();
    }

    public boolean isElementDisplayed(By locator) {
        WebElement element = waitUntilVisibilityOfElement(locator);
        return element.isDisplayed();
    }


    public void enterValue(By locator, String text) {
        WebElement element = waitUntilVisibilityOfElement(locator);
        element.sendKeys(text);
    }

    public void selectFromDropDown(By locator, String option) {
        WebElement dropdownElement = waitUntilVisibilityOfElement(locator);
        Select dropdown = new Select(dropdownElement);
        dropdown.selectByVisibleText(option);
    }

    public List<WebElement> getListOfElements(By locator) {

        return waitUntilVisibilityOfAllElement(locator);
    }

    public String getErrorMessage(By locator) {
        return getElementText(locator).replace("\n", " ");
    }


    public String calculateDateOfBirth(int age) {
        // Get the current date
        Calendar calendar = Calendar.getInstance();

        // Subtract the age in years from the current date
        calendar.add(Calendar.YEAR, -age);

        // Get the calculated birthdate
        Date calculatedBirthdate = calendar.getTime();

        // Format the calculated birthdate as "MM/dd/yyyy"
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        return dateFormat.format(calculatedBirthdate);
    }




}
