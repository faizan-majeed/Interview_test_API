import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class KarateTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:tests").tags("~@ignore").parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
