package action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import command.CommandAction;

public class WriteFormAction implements CommandAction {

	public String requestPro(HttpServletRequest request, HttpServletResponse response)
	throws Throwable {
		
		// 답글,원글 처리
		int num=0;
		int ref=1;
		int re_step=0;
		int re_level=0;
		
		// 답글이면
		if(request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}

		// JSP(view) MultipartRequest
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level", re_level);
		
		// 뷰리턴
		return "/board/writeForm.jsp";
	}
}
