
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SecondServlet extends GenericServlet{
   
    public void service(ServletRequest req,ServletResponse res)throws SecurityException,IOException{
        System.out.println("this is servlet using generic servlet");
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        out.println("<h1>This is my second servlet using generic servlet</h1>");
    }

}
