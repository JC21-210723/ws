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

@WebServlet(urlPatterns = { "/Delete" })
public class Delete extends HttpServlet {
   private static final long serialVersionUID = 1L;
   final String dbServer = "192.168.54.226";
   final String dbPort = "3306";
   final String dbName = "sotuken1";
   final String user = "210723";
   final String pass = "210723";
   public Delete() {
       super();
   }
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       String url = "jdbc:mysql://" + dbServer + "/" + dbName;
       response.setContentType("text/html;charset=UTF-8");
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       try {
           String[] selectedItems = request.getParameterValues("ijin_list");
           if (selectedItems != null && selectedItems.length > 0) {
               Class.forName("com.mysql.cj.jdbc.Driver");
               try (Connection conn = DriverManager.getConnection(url, user, pass)) {
                   for (String name : selectedItems) {
                       PreparedStatement statement = conn.prepareStatement("DELETE FROM ijin_list2 WHERE name LIKE ?;");
                       statement.setString(1, "%" + name + "%");
                       statement.executeUpdate();
                   }
               }
               request.getRequestDispatcher("/result.jsp").forward(request, response);
           }
       } catch (SQLException | ClassNotFoundException e) {
           e.printStackTrace();
       }
   }
}