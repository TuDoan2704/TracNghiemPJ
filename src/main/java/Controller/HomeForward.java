package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.DAOHome;
import DB.DBConnection;

/**
 * Servlet implementation class HomeForward
 */
@WebServlet("/HomeForward")
public class HomeForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		String pagestr = request.getParameter("pageid");
		int count = 5;
		int pageid = Integer.parseInt(pagestr);
		if(pageid ==1) {}
		else {
			pageid = pageid - 1;
			pageid = pageid * count + 1;
		}
		int countrow = DAOHome.Count(conn);
		int maxpageid = (countrow/count) + 1;
		List<Question> list = DAOHome.DisplayQuestion(conn, pageid, count);
		request.setAttribute("list", list);
		request.setAttribute("numberpage", Integer.parseInt(pagestr));
		request.setAttribute("maxpageid", maxpageid);
		RequestDispatcher rd = request.getRequestDispatcher("view/Home.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
