package ser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cotrol.service;
import model.BoardDAO;

public class BoardDetail implements service{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainTitle", "게시판 상세");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		request.setAttribute("mainData", new BoardDAO().detail(id));
	}
}
