package com.simple.BoardTest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import dao.BoardDao;
import vo.Board;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	SqlSession sqlSession;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";
	}

	@RequestMapping(value = "/guestBoard", method = RequestMethod.GET)
	public void guestBoardGET(Model model) {
		guestBoardPOST(model);
	}
	@RequestMapping(value = "/guestBoard", method = RequestMethod.POST)
	public void guestBoardPOST(Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		List<Board> blist = dao.selectBoard();
		model.addAttribute("blist",blist);
	}

	@RequestMapping(value = "/board", method = RequestMethod.POST)
	public String board(Board board, HttpServletRequest request) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		 String ip =null;
		 
		 ip = request.getHeader("X-Forwarded-For");
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("Proxy-Client-IP"); 
	        } 
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("WL-Proxy-Client-IP"); 
	        } 
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("HTTP_CLIENT_IP"); 
	        } 
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
	        }
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("X-Real-IP"); 
	        }
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("X-RealIP"); 
	        }
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getHeader("REMOTE_ADDR");
	        }
	        if (ip==null || ip.length()==0 || "unknown".equalsIgnoreCase(ip)) { 
	            ip = request.getRemoteAddr(); 
	        }
		 
		 System.out.println(ip);
		 board.setUser_id(ip);
		 
		dao.insertBoard(board);

		return "redirect:guestBoard";
	}

}
