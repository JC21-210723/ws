import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@WebServlet(urlPatterns={"/Insert"})
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	final String dbServer = "192.168.54.226";
	final String dbPort = "3306";
	final String dbName = "sotuken1";
	final String user = "210723";
	final String pass = "210723";
	
	public void doPost (
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		String url = "jdbc:mysql://"+dbServer+"/"+dbName;
		response.setContentType("text/html;charset=UTF-8");

		try {
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("ijin");

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection  conn = DriverManager.getConnection(url, user, pass);

			PreparedStatement statement = conn.prepareStatement("INSERT INTO ijin_list2(name) VALUES(?);");
            PreparedStatement statement2 = conn.prepareStatement("SELECT name FROM ijin_list2;");
			statement.setString(1, name);
			statement.executeUpdate();
			ResultSet rs = statement2.executeQuery();
			
			List<String> resultList = new ArrayList<>();
			
			while(rs.next()) {
				resultList.add(rs.getString("name"));
				request.setAttribute("list",resultList);
			}
			request.setAttribute("name",name);
			request.getRequestDispatcher("./result.jsp").forward(request,response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
