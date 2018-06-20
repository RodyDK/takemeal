package com.cm.takemeal.noticeboard.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.noticeboard.model.service.BoardService;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.PageMaker;
import com.cm.takemeal.noticeboard.model.vo.SearchCriteria;

@Controller
/*@RequestMapping("/DJ/*")*/
public class SearchBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public ModelAndView listPage(@ModelAttribute("page") SearchCriteria cri, ModelAndView mv)throws Exception{
		
		logger.info(cri.toString());

		mv.addObject("list", service.listSearchCriteria(cri));
		mv.setViewName("DJ/list");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		mv.addObject("pageMaker", pageMaker);
		logger.info(pageMaker.toString());
		return mv;
		
	}
	
	@RequestMapping(value="/readPage", method=RequestMethod.GET)
	public ModelAndView read(@RequestParam("bno")int bno, @ModelAttribute("cri")SearchCriteria cri, ModelAndView mv)
			throws Exception{
		
		System.out.println("readPage컨트롤러들어옴............");
		logger.info("readPage컨트롤러들어옴............");
		/*model.addAttribute(service.read(bno));*/
		System.out.println("bno : " + bno);
		mv.addObject("BoardVo",service.read(bno));
		/*mv.addObject(service.read(bno));*/
		mv.setViewName("DJ/readPage2");
		
		return mv;
	}
	
	@RequestMapping(value="/removePage", method=RequestMethod.POST)
	public String remove(@RequestParam("bno")int bno, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		
		service.remove(bno);
		System.out.println("-----removePage----------들어옴??-");
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:list.do";
	
	}
	
	@RequestMapping(value="DJ/modifyPage", method=RequestMethod.GET)
	public ModelAndView modifyPagingGET(int bno, @ModelAttribute("cri")SearchCriteria cri, ModelAndView mv, BoardVo board)throws Exception{
		
		System.out.println("-----------modifyPage.GET들어옴~~~~~~");
	/*	model.addAttribute(service.read(bno));*/
		logger.info(board.toString());
		mv.addObject("bvo", service.read(bno));
		/*mv.addObject(service.read(bno));*/
		mv.addObject("bd",board);
		logger.info("modifyPage.GET" + board.toString());
		mv.setViewName("DJ/modifyPage");
		
		return mv;
		/*return "DJ/modifyPage";*/
		
	} 
	
	
	@RequestMapping(value="DJ/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPOST(BoardVo board, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		
		logger.info(cri.toString());
		System.out.println("-----------modifyPage.POST들어옴~~~~~~");
		System.out.println("BoardVo : "+ board);
		logger.info(board.toString());
		service.modify(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/list";
	}

	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registGET() throws Exception{
		logger.info("regist get..............");
		
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String registerPOST(BoardVo board, RedirectAttributes rttr)throws Exception{
		
		logger.info("register post....");
		logger.info(board.toString());
		
		service.regist(board);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/memberControl", method=RequestMethod.GET)
	public ModelAndView memberList(Member member, ModelAndView mv)throws Exception{
		
		logger.info(member.toString());

		/*mv.addObject("list", service.listSearchCriteria(cri));*/
		mv.setViewName("DJ/memberControl");
		/*
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		mv.addObject("pageMaker", pageMaker);
		logger.info(pageMaker.toString());
		return mv;*/
		
		return mv;
	}
	
	
}
