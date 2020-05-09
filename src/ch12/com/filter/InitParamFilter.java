package ch12.com.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class InitParamFilter implements Filter {
    private FilterConfig filterConfig = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter02 초기화...");
        this.filterConfig = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse  response, FilterChain filterChain)
            throws IOException, ServletException {
        System.out.println("Filter02 수행...");
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");

        String param1 = filterConfig.getInitParameter("param1");
        String param2 = filterConfig.getInitParameter("param2");

        String message;

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter printWriter = response.getWriter();

        if (param1.equals(id) && param2.equals(passwd)) {
            message = "로그인에 성공 했습니다.";
        } else {
            message = "로그인에 실패 했습니다.";
        }
        printWriter.println(message);

        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {
        System.out.println("Filter02 해제..");
    }

}
