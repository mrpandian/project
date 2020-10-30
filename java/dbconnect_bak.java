//import java.sql.Connection;
//import java.sql.DriverManager;

import java.sql.*;
import javax.sql.*;


public class dbconnect_bak
{
public static void main (String[] args) 
{

String friendname,flat;

System.out.println("Connecting to database...");

try{
Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test", "root", "root");
System.out.println("Connected database successfully...");

Statement stmt = conn.createStatement();
//ResultSet rs = stmt.executeQuery("select * from tushar_friends");
ResultSet rs = stmt.executeQuery("select * from expense_category");

while(rs.next())
{
	friendname = rs.getString(1);
        flat = rs.getString(2);
	System.out.println(friendname);
	System.out.println(flat);
}


conn.close();


}

//catch(ClassNotFoundException e) {
//e.printStackTrace();
//}

catch(SQLException e) {
e.printStackTrace();

}

finally
{
System.out.println("Program ended...");
}

} //end main



} //end class
