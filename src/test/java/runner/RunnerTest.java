package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Assert;
import org.junit.Test;

import javax.xml.transform.Result;

import static org.junit.Assert.assertTrue;

public class RunnerTest {
    @Test
    public void testParallele(){
        Results results = Runner.path("src/test/resources/features").parallel(1);
        //assertTrue(results.getFailCount() == 0);
    }
}
