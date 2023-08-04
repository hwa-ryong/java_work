package cotrol;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface service {
	void execute (HttpServletRequest request, HttpServletResponse response);
}
