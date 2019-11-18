package cn.jeep.Listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppListener implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("销毁了--用户关闭了");
	}

	public void contextInitialized(ServletContextEvent arg0) {
		//取到ServletContext
		ServletContext context=arg0.getServletContext();
/*		context.setAttribute("ctx", context.getContextPath());
		System.err.println("---------Servlet容器创建成功 ctx被放到ServletContext作用域-------");		*/
		System.out.println("开启了--用户访问了");

	}

}
