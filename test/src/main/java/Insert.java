import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Insert"})
public class Insert extends HttpServlet {
   private static final long serialVersionUID = 1L;
   final String dbServer = "192.168.54.226";
   final String dbPort = "3306";
   final String dbName = "sotuken1";
   final String user = "210723";
   final String pass = "210723";
   
   public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       String url = "jdbc:mysql://" + dbServer + "/" + dbName;
       response.setContentType("text/html;charset=UTF-8");
       try {
           request.setCharacterEncoding("UTF-8");
           String name = request.getParameter("ijin");
           Class.forName("com.mysql.cj.jdbc.Driver");
           try (Connection conn = DriverManager.getConnection(url, user, pass)) {
               PreparedStatement statement = conn.prepareStatement("INSERT INTO ijin_list2(name) VALUES(?);");
               statement.setString(1, name);
               statement.executeUpdate();
           }
           
           HttpSession session = request.getSession(true);
           
           //今回は、「session」を使用して値をセット！！
           session.setAttribute("name", name);
           
           response.sendRedirect("./Display");
           
       } catch (SQLException | ClassNotFoundException e) {
           e.printStackTrace();
       }
   }
}