import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestRunner {


    @Test
    public void sanityCheckTest(){
        Results results = Runner.path("classpath:/features").parallel(1);
        assertEquals(results.getErrorMessages(), 0, results.getFailCount());
    }

}
