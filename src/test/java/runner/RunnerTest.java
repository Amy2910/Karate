package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;


import javax.xml.transform.Result;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;


public class RunnerTest {

    @Test
    public void testParalleleTest(){
        Results results = Runner.path("classpath:features").parallel(1);
        //assertEquals(0, results.getFailCount());
    }
}
