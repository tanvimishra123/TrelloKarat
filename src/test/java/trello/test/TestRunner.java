package trello.test;

import com.intuit.karate.junit5.Karate;
import io.qameta.allure.Description;
import io.qameta.allure.Severity;
import io.qameta.allure.SeverityLevel;

class TestRunner {
    @Karate.Test
    @Severity(SeverityLevel.BLOCKER)
    @Description("verify login page")
    Karate loginTest() {
        return new Karate().feature("trelloLogin", "createBoard", "updateBoard", "deleteBoard").relativeTo(getClass());
    
    }


}


