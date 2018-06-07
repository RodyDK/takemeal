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

import com.cm.takemeal.noticeboard.model.service.BoardService;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.PageMaker;
import com.cm.takemeal.noticeboard.model.vo.SearchCriteria;

@Controller
@RequestMapping("DJ/sboard/*")
public class SearchBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public ModelAndView listPage(@ModelAttribute("cri") SearchCriteria cri, ModelAndView mv)throws Exception{
		
		logger.info(cri.toString());
		
		mv.addObject("list", service.listSearchCriteria(cri));
		mv.setViewName("DJ/sboard/list");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		mv.addObject("pageMaker", pageMaker);
		return mv;
		
		
	}
	
	@RequestMapping(value="/reaPage", method=RequestMethod.GET)
	public ModelAndView read(@RequestParam("bno")int bno, @ModelAttribute("cri")SearchCriteria cri, ModelAndView mv)
			throws Exception{
		
		/*model.addAttribute(service.read(bno));*/
		mv.addObject(service.read(bno));
		mv.setViewName("dj/sboard/read");
		return mv;
	}
	
	@RequestMapping(value="/removePage", method=RequestMethod.POST)
	public String remove(@RequestParam("bno")int bno, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		
		service.remove(bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/sboard/list";
	
	}
	
	@RequestMapping(value="/modifyPage.do", method=RequestMethod.GET)
	public void modifyPagingGET(int bno, @ModelAttribute("cri")SearchCriteria cri, Model model)throws Exception{
		model.addAttribute(service.read(bno));
	} 
	
	
	@RequestMapping(value="/modifyPage.do", method=RequestMethod.POST)
	public String modifyPagingPOST(BoardVo board, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		logger.info(cri.toString());
		service.modify(board);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/sboard/list";
	}

}
