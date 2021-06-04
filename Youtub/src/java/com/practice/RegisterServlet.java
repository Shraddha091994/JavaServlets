package com.practice;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         resp.setContentType("text/html"); 
         PrintWriter out=resp.getWriter();
         out.println("<h2>Welcome to Register Servlet</h2>");
         String name=req.getParameter("user_name");
         String password=req.getParameter("user_password");
         String email=req.getParameter("user_email");
         String gender=req.getParameter("user_gender");
         String course=req.getParameter("user_course");
         
         String cond=req.getParameter("condition");
         out.println(cond);
         if(cond!=null)
         {
         if(cond.equals("checked")){
             out.println("<h2> Name : "+name+"</h2>");
             out.println("<h2> Password : "+password+"</h2>");
             out.println("<h2> Email : "+email+"</h2>");
             out.println("<h2> Gender : "+gender+"</h2>");
             out.println("<h2> Course : "+course+"</h2>");
             
             //
             //jdbc
             //
             
             //saved to db
             //....
             
             RequestDispatcher rd=req.getRequestDispatcher("success");
             rd.forward(req, resp);
             

         }else{
         out.println("<h2>You have not accepted terms and condition</h2>");
         }
        
     }
         else{
                  out.println("<h2>You have not accepted terms and condition</h2>");

                  //I want to include output of index.html
                  
                  //out the object of RequestDispatcher
                  
                  RequestDispatcher rd=req.getRequestDispatcher("index.html");
                  
                  //include
                  
                  rd.include(req, resp);
         }
    }
}
