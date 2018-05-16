package com.cm.takemeal;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	



	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//private Member member;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	//public String home(Locale locale, Model model) {
	public String home() {
		
		
		
		logger.info("home.do run...");

		//member = new Member();  //DI(Dependancy Injection)
		//스프링이 의존성주입을 주관하게 하려면
		//첫번째 방법 : 디스패처서블릿에 <bean> 등록함
		//두번째 방법 : 용도에 맞게 어노테이션 지정함
		
		return "home";
		//return "/first/index";
		//컨트롤로에서 리턴되는 뷰는 디스패처서블릿에 등록된
		//뷰리졸버에 의해 지정된 폴더에서 찾아서 내보내지게 됨
		//WEB-INF/views/ 폴더 아래에 뷰가 있어야 함
		//웰컴파일인 index.jsp는 컨트롤러를 통해서는 사용할 수 없음
		//메인 페이지의 역할을 할 뷰페이지를 뷰리졸버가 정한 위치에 둠
	}
	
}















