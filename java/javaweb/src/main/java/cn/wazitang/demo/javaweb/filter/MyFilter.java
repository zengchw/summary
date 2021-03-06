package cn.wazitang.demo.javaweb.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * 作者 zcw
 * 时间 2017/7/6 上午12:15
 * 描述 TODO
 */
@WebFilter(urlPatterns = {"/home"})
public class MyFilter implements Filter {

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("MyFilter ==> doFilter() ==> before");
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("MyFilter ==> doFilter() ==> after");
    }

    public void destroy() {
        System.out.println("MyFilter ==> destroy()");
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("MyFilter ==> init()");
    }
}
