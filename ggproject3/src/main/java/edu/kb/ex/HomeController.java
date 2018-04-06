package edu.kb.ex;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kb.ex.dao.ContractDao;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "index";
	}
	
//	@RequestMapping("/idSearch")
//	public String idSearch() {	
//		return "idSearch";
//	}
	
	@RequestMapping("/contractList")
	public String list(HttpServletRequest request, Model model) {
		
		ContractDao dao = sqlSession.getMapper(ContractDao.class);
		String memberId = request.getParameter("memberId");
		
		
		model.addAttribute("contractList", dao.listDao("memberId"));
				
		return "contractList";
	}
	

	
	@RequestMapping("/contract")
	public String contractform(Model model) {	
		
		ContractDao dao = sqlSession.getMapper(ContractDao.class);
		model.addAttribute("contract", dao.carList());
		
		return "contract";
	}
	
	@RequestMapping("/write")
	public String contract(HttpServletRequest request,Model model) {
		String rentaldate = request.getParameter("rentaldate");
		String returndate = request.getParameter("returndate");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		ContractDao dao = sqlSession.getMapper(ContractDao.class);
		try {
			Date to1 = transFormat.parse(rentaldate);
			Date to2 = transFormat.parse(returndate);
			dao.writeDao(request.getParameter("memberId"), request.getParameter("carNum"), request.getParameter("sumprice"), to1, to2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:contractList";
	}
	
	
}
