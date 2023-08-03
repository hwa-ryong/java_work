package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.BoardDAO;


public class BDetail implements BoardService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainTitle","게시판 상세");
		System.out.println("BDetail.execute() 실행");
		
		int id = Integer.parseInt(request.getParameter("id"));
		//넘어오는 지 확인 작업.
		//System.out.println(new BoardDAO().detail(id));
		request.setAttribute("mainData", new BoardDAO().detail(id));
	}
}
