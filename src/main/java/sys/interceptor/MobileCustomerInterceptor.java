package sys.interceptor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import sys.entity.UserInfo;
import sys.utils.UserUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MobileCustomerInterceptor implements HandlerInterceptor  {

	private final String ADMINSESSION = "token";
	//拦截前处理
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
//		StringBuffer url = request.getRequestURL();
//		String url1 = request.getRequestURI();
		String url = request.getContextPath();
//		String  url3 = request.getServletPath() ;

//		String  url4 = request.getQueryString();
		UserInfo user = UserUtil.getUser(request);
		if(user==null|| StringUtils.isEmpty(user.getUsername())){
			response.sendRedirect(url+"/login");
			return false;
		}
		return true;
	}
	//拦截后处理
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView mav) throws Exception {
//		response.sendRedirect("/a/login");
	}
	//全部完成后处理
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception e) throws Exception {
	}
}