package com.educative.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@CrossOrigin(origins = "https://thembis-bazaar.netlify.app")
public class ClientForwardController {
    @GetMapping(value= "/**/{path:[^\\.]*}")
    public String forward(){
        return "forward:/";

    }


}
