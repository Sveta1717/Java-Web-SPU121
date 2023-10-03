package step.learning.ioc;

import com.google.inject.servlet.ServletModule;
import step.learning.Filters.*;
import step.learning.servlets.*;

public class ServletConfig extends ServletModule {
    @Override
    protected void configureServlets() {
        // Модуль - конфігурація IoC, тут реєструємо фільтри
        filter( "/*" ).through( CharsetFilter.class );
        filter( "/*" ).through( DbFilter.class );
        //filter( "/*" ).through( DbFilter.class ) ;

        // ... та сервлети
        serve( "/about-jsp"  ).with( AboutJSPServlet.class );
        serve( "/about"      ).with( AboutServlet.class );
        serve( "/filter"     ).with( FilterServlet.class );
        serve( "/"           ).with( IndexServlet.class );
        serve( "/ioc"        ).with( IocServlet.class );
    }
}
