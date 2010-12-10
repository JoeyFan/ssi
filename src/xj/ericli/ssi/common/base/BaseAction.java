package xj.ericli.ssi.common.base;

import javax.servlet.ServletContext;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionServlet;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class BaseAction extends Action {
	public WebApplicationContext ctx = null;

	public void setServlet(ActionServlet actionServlet) {
		super.setServlet(actionServlet);
		if (actionServlet != null) {
			ServletContext servletContext = actionServlet.getServletContext();
			ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
		}
	}
}
