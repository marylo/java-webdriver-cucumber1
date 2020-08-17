package support;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import static support.TestContext.getDriver;

public class Hooks {

    @Before(order = 0)
    public void scenarioStart() {
        TestContext.initialize();
    }

    @After(order = 0)
    public void scenarioEnd(Scenario scenario) {

        TestContext.teardown();
    }
}
