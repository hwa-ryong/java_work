package ser_p;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.BoardService;
import model_p.BoardDAO;
import model_p.BoardDTO;


public class BList implements BoardService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//게시판 목록
		request.setAttribute("mainTitle","게시판 목록");
		System.out.println("BList.execute() 실행");
		
		//이런 방법도 있다.
		//ArrayList<BoardDTO> mainData = new BoardDAO().list();
		//System.out.println(mainData);
		
		request.setAttribute("mainData",new BoardDAO().list());
	}
}
