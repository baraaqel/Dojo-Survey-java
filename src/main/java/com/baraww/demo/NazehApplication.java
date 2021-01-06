package com.baraww.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@SpringBootApplication
@Controller

public class NazehApplication {

    public static void main(String[] args) {
        SpringApplication.run(NazehApplication.class, args);
    }



    @RequestMapping("/")
    public String index() {
        return "index.jsp";
    }

    @RequestMapping(path="/survey", method= RequestMethod.POST)
    public String submit(@RequestParam(value="name") String name, @RequestParam(value="location") String location,
                         @RequestParam(value="language") String language, @RequestParam(value="comment") String comment, HttpSession session) {
        session.setAttribute("name", name);
        session.setAttribute("location", location);
        session.setAttribute("language", language);
        session.setAttribute("comment", comment);
        return "redirect:/results";
    }

    @RequestMapping("/results")
    public String results(HttpSession session) {
        return "resultpage.jsp";
    }

    @RequestMapping("/back")
    public String back(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }


}
