package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Answer;
import BEAN.Question;
import DAO.DAOHome;
import DB.DBConnection;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = DBConnection.CreateConnection();
		
		String pagestr = request.getParameter("pageid");
		int pageid = Integer.parseInt(pagestr);
		int count = 5;
		if(pageid ==1) {}
		else {
			pageid = pageid - 1;
			pageid = pageid * count + 1;
		}
		int countrow = DAOHome.Count(conn);
		
		int maxpageid = (countrow/count) + 1;
		List<Question> listcorrect = DAOHome.DisplayAnswer(conn, pageid, count);
		List<Answer> listanswer = new ArrayList<>();
		
		for(int i = pageid; i <= countrow; i++) {
		String ansuser = request.getParameter("ans["+i+"]");
		
			Answer as = new Answer();
			as.setNumans(i);
			as.setAns(ansuser);
			listanswer.add(as);
		
		}
		request.setAttribute("listsys", listcorrect);
		request.setAttribute("listuser", listanswer);
		
		request.setAttribute("numberpage", Integer.parseInt(pagestr));
		request.setAttribute("maxpageid", maxpageid);
		RequestDispatcher rd = request.getRequestDispatcher("view/Result.jsp");
		rd.forward(request, response);
	
	}
}
