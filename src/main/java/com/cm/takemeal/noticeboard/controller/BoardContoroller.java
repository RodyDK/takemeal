package com.cm.takemeal.noticeboard.controller;

import java.lang.annotation.Inherited;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cm.takemeal.noticeboard.model.service.BoardService;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.PageMaker;

@Controller
@RequestMapping("/dj/*")
public class BoardContoroller {
	
	private static final Logger logger= LoggerFactory.getLogger(BoardContoroller.class);

	@Inject 
	private BoardService service;
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public void registerGET(BoardVo board, Model model) throws Exception{
		
		logger.info("register get...........asdasd...");
		
	}
	
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String registerPOST(BoardVo board, RedirectAttributes rttr)throws Exception{
		
		logger.info("register post.....");
		logger.info(board.toString());
		
		service.regist(board);
		
		rttr.addAttribute("msg", "SUCCESS");
		
		/*return "/board/success";*/
		return "redirect:/dj/listAll";
	}
		
	@RequestMapping(value = "/listAll.do", method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		
		logger.info("show all list..................");
		model.addAttribute("list", service.listAll());
		
	
		
	}
	
	@RequestMapping(value ="/read.do", method = RequestMethod.GET)
	public void read(@RequestParam("bno")int bno, Model model)throws Exception{
		System.out.println("read.............");
		model.addAttribute(service.read(bno));
	}
	
	
	@RequestMapping(value = "/remove.do", method= RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr)throws Exception{
		
		service.remove(bno);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/dj/listAll";
	}
	
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public void modifyGET(int bno, Model model) throws Exception{
		
		model.addAttribute(service.read(bno));
	}
	
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modifyPOST(BoardVo board, RedirectAttributes rttr)throws Exception{
		
		logger.info("mod post.....");
		
		service.modify(board);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/dj/listAll";
	}
	
	@RequestMapping(value = "/listCri.do", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model)throws Exception{
		
		logger.info("show list page with Criteria...........");
		
		model.addAttribute("list", service.listCriteia(cri));
	}
	
	
	@RequestMapping(value = "/listPage", method=RequestMethod.GET)
	public void listPage(@ModelAttribute("cri")Criteria cri, Model model) throws Exception{
		
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listCriteia(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		/*pageMaker.setTotalCount(131);*/
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		
		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	
	
	
}
