package controller;

import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import java.io.IOException;

@Controller
public class LoginController{
    @RequestMapping(value = "/Blog/login.do")
    public void login(MockHttpServletResponse response){
        try {
            response.sendRedirect("edit.html");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
