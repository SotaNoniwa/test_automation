package hu.unideb.inf;

import io.cucumber.java.en.Given;

public class CommStepDefs extends AbstractStepDefs {

    @Given("the home page is opened")
    public void thHomePageIsOpened() {
        homePage.openPage();
    }
}
