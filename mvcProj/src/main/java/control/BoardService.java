package control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface BoardService { //interface는 선언만됨.
	 void execute (HttpServletRequest request, HttpServletResponse response); 
}
