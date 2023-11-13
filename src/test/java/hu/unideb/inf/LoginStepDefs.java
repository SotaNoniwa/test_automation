package hu.unideb.inf;

import io.cucumber.java.en.Then;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginStepDefs extends AbstractStepDefs {
    @Then("the {string} login message is shown")
    public void theErrorMessageMessageIsShown(String errorMessage) {
        assertEquals(errorMessage, homePage.getLoginErrorMessage());
    }

    @Then("the user is directed to {string}")
    public void theUserIsDirectedToPAGE_URL(String PAGE_URL) {
        assertEquals(PAGE_URL, homePage.getPageUrl());
    }
}
