package ch12.com.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class AuthenFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter01 초기화...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        System.out.println("Filter01.jsp 수행시작...");
        String name = request.getParameter("name");

        if (name == null || "".equals(name)) {
            response.setCharacterEncoding("utf-8");
            response.setContentType("text/html; charset=utf-8");
            PrintWriter printWriter = response.getWriter();
            String message = "입력된 name 값이 null 입니다.";
            printWriter.println(message);
            return;
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        System.out.println("Filter01 해제...");
    }
}
