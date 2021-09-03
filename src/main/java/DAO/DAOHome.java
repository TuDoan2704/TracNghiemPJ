package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import BEAN.Question;

public class DAOHome {

	public static List<Question> DisplayQuestion(Connection conn, int start, int count){
		
		List<Question> list = new ArrayList<>();
		PreparedStatement ptmt = null;		
		String sql = "select * from questiontoeic limit "+(start-1)+", "+count+""; 
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("number");
				String ques = rs.getString("question");
				String option1 = rs.getString("option1");
				String option2 = rs.getString("option2");
				String option3 = rs.getString("option3");
				String option4 = rs.getString("option4");
				list.add(new Question(num, ques, option1, option2,option3,option4));				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
		
	}
	public static List<Question> DisplayAnswer(Connection conn, int start, int count){
		
		List<Question> list = new ArrayList<>();
		PreparedStatement ptmt = null;
		String sql = "select * from questiontoeic limit "+(start-1)+", "+count+"";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("number");
				String ques = rs.getString("question");
				String option1 = rs.getString("option1");
				String option2 = rs.getString("option2");
				String option3 = rs.getString("option3");
				String option4 = rs.getString("option4");
				String correctans = rs.getString("correctanswer");
				list.add(new Question(num, ques, option1, option2, option3, option4, correctans));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
		
	}
		public static int Count(Connection conn) {
			int count = 0;
			PreparedStatement ptmt = null;
			String sql = "select count(*) from questiontoeic";
			try {
				ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				rs.next();
				count = rs.getInt(1);
				}
			catch (SQLException e) {
				
				e.printStackTrace();
			}
			return count;
			
		}
	
}	
