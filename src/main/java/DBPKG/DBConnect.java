package DBPKG;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public static Connection getConnection()throws Exception{
    	//C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib
    	//WEB-INF -> lib -> 파일 복사
    	Class.forName("oracle.jdbc.OracleDriver");
    	
    	Connection con = DriverManager.getConnection
    			("jdbc:oracle:thin:@//localhost:1521/xe","zpokk","1234");
 
    	return con;
    }
}
