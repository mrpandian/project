import java.sql.*;
import javax.sql.*;

//following are used for mariadb connection pool created in app server
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.naming.NamingException;


public class dbconnect
{
	public static Connection conn = null;
//	@Resource(name = "jdbc/test")
//    	public DataSource dataSource;
	public static String categoryname, categorydesc;

	public static void OpenConnPoolMariaDB()
	{
		System.out.println("Step 1...");
		try{
		Context initContext = new InitialContext();
		System.out.println("Step 2...");
//		Context envContext  = (Context)initContext.lookup("java:/comp/env/jdbc/mariadb");
		Context envContext  = (Context) initContext.lookup("java:/comp/env/jdbc/mariadb");
		System.out.println("Step 3...");
		DataSource ds = (DataSource) envContext.lookup("jdbc/test");
		System.out.println("Step 4...");
		Connection conn = ds.getConnection();
//		Connection conn = dataSource.getConnection();
		System.out.println("Step 5...");
		Statement statement = conn.createStatement();
		String sql = "select * from expense_category";
		ResultSet rs = statement.executeQuery(sql);		

	        while (rs.next()) {
			categoryname = rs.getString(1);
			categorydesc = rs.getString(2);

                System.out.println("categoryname:"+ categoryname +"categorydesc:"+categorydesc);
            }

		} catch (NamingException ne) { ne.printStackTrace(); }
		  catch (SQLException se) { se.printStackTrace(); }
	}


	public static void OpenConnMariaDB() 
	{
		System.out.println("Connecting to database...");

		try{
			Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test", "root", "root");
			System.out.println("Connected database successfully...");
		}

		catch(SQLException s) {
			s.printStackTrace();
		}

	}

	public static void CloseConnMariaDB()
	{
		try{
			conn.close();
		}

		catch(SQLException s) {
			s.printStackTrace();
		}

	}

/*
public static void QueryExpenseCategory()
{

	public static String categoryname, categorydesc;

	try{
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from expense_category");

		while(rs.next())
		{
			categoryname = rs.getString(1);
			categorydesc = rs.getString(2);

			System.out.println("Category Name            Category Description");
			System.out.println(categoryname + "    " + categorydesc);
		}
	}
	catch(SQLException s) {
		s.printStackTrace();
	}

}
*/
} //end class
