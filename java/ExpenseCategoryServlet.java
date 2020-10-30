import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ExpenseCategoryServlet")

public class ExpenseCategoryServlet extends HttpServlet{

//@Override

  public void doGet(HttpServletRequest request, HttpServletResponse response)
                                   throws ServletException, IOException {

      // Set the response message's MIME type
      response.setContentType("text/html;charset=UTF-8");

      // Allocate a output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();

   String name = request.getParameter("categoryname");
   String desc = request.getParameter("categorydesc");

   dbconnect dbconnect1 = new dbconnect();

   dbconnect1.OpenConnPoolMariaDB();

//   dbconnect1.OpenConnMariaDB();
//   dbconnect1.QueryExpenseCategory();
//   dbconnect1.CloseConnMariaDB();

        // build HTML code
        String htmlResponse = "<html>";
        htmlResponse += "<h2>doGet Category Name is: " + name + "<br/>";       
        htmlResponse += "goGet Category Desc is: " + desc + "</h2>";     
        htmlResponse += "</html>";

	out.println("" + htmlResponse + "");



        // return response
//        PrintWriter.println(""+htmlRespone+"");

    System.out.println("doGet name:" + name + " desc:"+desc);

  }


   // Method to handle POST method request.
   public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

      doGet(request, response);
   }




//  public void doPost(HttpServletRequest request, HttpServletResponse response)
//                                   throws ServletException, IOException {
      // Set the response message's MIME type
//      response.setContentType("text/html;charset=UTF-8");

      // Allocate a output writer to write the response message into the network socket
//      PrintWriter out = response.getWriter();

//   String name = request.getParameter("categoryname");
//   String desc = request.getParameter("categorydesc");

        // build HTML code
//        String htmlRespone = "<html>";
//        htmlRespone += "<h2>doPost Category Name is: " + name + "<br/>";       
//        htmlRespone += "goPost Category Desc is: " + desc + "</h2>";     
//        htmlRespone += "</html>";

        // return response
//        PrintWriter.println(htmlRespone);

//    System.out.println("doGet name:" + name + " desc:"+desc);
//  }


}