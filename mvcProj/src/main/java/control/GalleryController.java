package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model_p.PageData;


@WebServlet("/gallery/*")
public class GalleryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String galleryStr = request.getRequestURI().substring(
				(request.getContextPath()+"/gallery/").length()
				);
		System.out.println(galleryStr);
		
		try {
			request.setCharacterEncoding("utf-8");
			request.setAttribute("mainPage", "gallery/"+galleryStr);
			
			//newInstance는 리턴을 Object로 받는다.
			//Object service = Class.forName("ser_p."+serviceStr).newInstance();
			GalleryService service = (GalleryService)Class.forName("ser_p."+galleryStr).newInstance(); 
			service.execute(request, response);
			
			
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/views/template.jsp");
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
