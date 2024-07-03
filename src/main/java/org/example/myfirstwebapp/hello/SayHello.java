package org.example.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHello {

    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello()
    {
        return "Hello! What are you learning today?";
    }
    @RequestMapping("say-hello-h")
    @ResponseBody
    public String sayHelloH()
    {
        StringBuffer sb=new StringBuffer();

       sb.append("<html>");
        sb.append("<head>");
        sb.append("<title>My first HTML page </title");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("My first page body");
        sb.append("</body>");
        sb.append("</html>");
        return sb.toString();



    }
    @RequestMapping("say-hello-jsp")
    public String sayHelloJsp()
    {
        return "sayHello";
    }

}
