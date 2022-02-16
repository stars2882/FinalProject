package stepdefinitions;

import io.cucumber.java.After;
import io.cucumber.java.AfterAll;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeAll;
import manager.DriverManager;

public class RunnerHooks {

    @BeforeAll
    static public void setupDriver() {
        DriverManager.getDriver();
    }

    @AfterAll
    static public void quitDriver() {
        DriverManager.quitDriver();
    }

}
