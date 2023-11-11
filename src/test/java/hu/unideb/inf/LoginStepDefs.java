package hu.unideb.inf;

import io.cucumber.java.en.Then;

import static hu.unideb.inf.AbstractStepDefs.homePage;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginStepDefs {
    @Then("the {string} message is shown")
    public void theErrorMessageMessageIsShown(String errorMessage) {
        assertEquals(errorMessage, homePage.getErrorMessage());
    }
}
