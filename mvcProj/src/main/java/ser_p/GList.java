package ser_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.GalleryService;
import model_p.BoardDAO;
import model_p.GalleryDAO;
import model_p.GalleryDTO;

public class GList implements GalleryService{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("mainTitle","게시판 목록");
		
		GalleryDTO gto = (GalleryDTO) request.getAttribute("mainData");
		
		//request.setAttribute("mainData",new GalleryDAO().list(gto));
		request.setAttribute("mainData",new GalleryDAO().list(gto));
		
	
	}
	
}
