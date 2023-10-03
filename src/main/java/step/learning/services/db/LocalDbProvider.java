package step.learning.services.db;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.inject.Inject;
import com.google.inject.Singleton;

import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

@Singleton
public class LocalDbProvider implements DbProvider{

    private final Logger logger;
    private Connection connection;

@Inject
    public LocalDbProvider(Logger logger) {
        this.logger = logger;
    }

    @Override
    public Connection getConnection() {
        if( connection == null ) {
            try( InputStreamReader jsonReader = new InputStreamReader(
                    Objects.requireNonNull( this
                            .getClass()
                            .getClassLoader()
                            .getResourceAsStream("dblocal.json"))))
            {
                JsonObject config =
                        JsonParser
                                .parseReader( jsonReader )
                                .getAsJsonObject() ;
                Class.forName("com.mysql.cj.jdbc.Driver" ) ;
                connection = DriverManager.getConnection(
                        config.get( "url" ).getAsString(),
                        config.get( "user" ).getAsString(),
                        config.get( "password" ).getAsString()
                ) ;
            }
            catch( Exception ex ) {
                logger.log(Level.SEVERE, ex.getMessage());
            }
        }
        return connection;
    }
}
