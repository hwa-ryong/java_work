package ser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cotrol.service;
import model.BoardDAO;

public class BoardList implements service{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//게시판 목록
		request.setAttribute("mainTitle", "게시판 목록");
		request.setAttribute("mainData", new BoardDAO().list());
	}

}
