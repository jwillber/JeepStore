package cn.jeep.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class loginInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		//获取请求的RUi:去除http:localhost:8080这部分剩下的
		String uri = request.getRequestURI();
		HttpSession session = request.getSession();
		String uid = (String) session.getAttribute("uid");
		if (uri.indexOf("/login.do") >= 0) {
			return true;
		}
		if(uid == null){
			response.sendRedirect(request.getContextPath()+"/login.jsp");
			System.out.println("使用了拦截器--拦截成功");
			return false;
		}			
		System.out.println("使用了拦截器--不需要拦截");
		return true;
	}
	
}
