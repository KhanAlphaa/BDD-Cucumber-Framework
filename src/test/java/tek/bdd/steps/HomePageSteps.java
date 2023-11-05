package tek.bdd.steps;

import io.cucumber.java.en.Then;
import org.junit.Assert;
import tek.bdd.pages.HomePage;
import tek.bdd.utility.SeleniumUtility;

public class HomePageSteps extends SeleniumUtility {

    @Then("Validate the title should be {string}")
    public void the_title_should_be(String expectedTitle) {
        String actualTile = getDriver().getTitle();

        Assert.assertEquals("Title Validation",
                expectedTitle,
                actualTile);

    }

    @Then("Validate the home page header should be {string}")
    public void validate_the_home_page_header_should_be(String expectedTitle) {
        String actualTitle = getElementText(HomePage.homePageHeaderLocator);

        Assert.assertEquals("Validate Header Title",
                expectedTitle,
                actualTitle);

    }

    @Then("the {string} button should exist")
    public void the_button_should_exist(String expectedButton) {
        boolean actualButton = isElementDisplayed(HomePage.createPrimaryAccountBtnLocator);
        Assert.assertTrue("The Button is not displayed in the Home Page", actualButton);
    }


}
