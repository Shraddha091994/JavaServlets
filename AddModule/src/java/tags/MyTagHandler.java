
package tags;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.Date;

public class MyTagHandler extends TagSupport
{

    @Override
    public int doStartTag() throws JspException {
        
        try {
            
            //task.....tag
            JspWriter out=pageContext.getOut();
            
            out.println("<h1>This is my custem tag</h1>");
            out.println("<p>This is custem paragraph</h1>");
            out.println("<br>");
            out.println(new Date().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
  
    return SKIP_BODY;
    }
    
}
