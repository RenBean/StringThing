package springBootApp.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Ari on 8/8/16.
 */
@RestController
public class JsonRestController {

    @RequestMapping("/rest/")
    public String index() {
        return "<h1>Greetings from Spring Boot!</h1>";
    }

    @RequestMapping("/rest/test")
    public String test() {
        return "<h1>This is a test...</h1>";
    }
}
