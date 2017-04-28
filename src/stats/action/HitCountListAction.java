package stats.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stats.model.HitCount;
import stats.model.StatsDao;

public class HitCountListAction implements StatsAction{

	@Override
	public StatsActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		StatsDao dao = StatsDao.getInstance();
		List<HitCount> list = dao.listHitCount();
		request.setAttribute("list", list);
		
		HttpSession session = request.getSession();
		if(session.getAttribute("HitCountListJ") != null){
			session.removeAttribute("HitCountListJ");
		}
		
		session.setAttribute("HitCountListJ", list);
		
		StatsActionForward forward = new StatsActionForward();
		forward.setisRedirect(true);
		forward.setPath("main/template.jsp?body=../stats/hitcountlist.jsp");
		
		return forward;
	}
	
}
