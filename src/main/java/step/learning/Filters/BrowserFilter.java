package step.learning.Filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BrowserFilter implements Filter {
    private FilterConfig filterConfig ;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig ;
    }
    public void doFilter(
            ServletRequest servletRequest,
            ServletResponse servletResponse,
            FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

            req.setAttribute("userAgent", req.getHeader("User-Agent"));

        // Продовження ланцюга фільтрів і обробки запиту
        filterChain.doFilter( req, resp );

    }
    public void destroy() {
        this.filterConfig = null ;
    }
}
