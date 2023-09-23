package runners;
import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		features="./src/test/resources/features", //to specify the location of the feature
		glue="tests", //to specify the location of step definition so cucumber can map with scenario
		dryRun=true,
		tags="@editItem"
		)
public class DryRunner {

}
