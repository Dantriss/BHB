package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.Board_LessorDTO;
import com.dto.Board_NoticeDTO;
import com.dto.Criteria;
import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.dto.LessorDTO;
import com.dto.MemberDTO;
import com.dto.PageVO;
import com.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping("myBoardList")
	public String myBoardList(HttpSession session) {
		LessorDTO ldto=(LessorDTO)session.getAttribute("lessor");
		String lessorid=ldto.getUserid();
		System.out.println("%%%%%%%%%%"+lessorid);
		List<Board_LessorDTO> list=service.myBoardList(lessorid);
		session.setAttribute("myboardList", list);
		return "myBoardList";
	}
	
	
	@RequestMapping("boardHitChange")
	public String boardHitChange(@RequestParam("num") int num) {
		
		Board_LessorDTO ldto=service.boardLessor(num);
		//num값을 이용해서 디비에서 dto값 가져오기
		
		int hit=ldto.getBl_hit();
		//dto에서 현재 hit값 뽑기
		
		int hitUp=hit+1;
		//hit값에 +1하기
		
		ldto.setBl_hit(hitUp);
		//dto의 hit값을 +1된 값으로 변경해서 넣기
		
		service.boardHitChange(ldto);
		
		return "redirect:boardLessor?num="+num;
	}
	@RequestMapping("myBoardDelete")
	public String myBoardDelete(@RequestParam("num") int num) {
		service.myBoardDelete(num);
		return "redirect:myBoardList";
	}
	
	//수정 버튼 클릭시 해당 글 수정 화면으로 넘기는 컨트롤러
	@RequestMapping("myBoardModify_view")
	public String myBoardModify_view(@RequestParam("num") int num,HttpSession session) {
		Board_LessorDTO ldto=service.boardLessor(num);
		session.setAttribute("myBoard",ldto);
		return "myBoardModify_view";
	}
	
	//임대인이 자기 글 수정
	@RequestMapping("myBoardModify")
	public String myBoardModify(Board_LessorDTO m,HttpSession session) {
		Date date=new Date();
		m.setBl_date(date);
		service.myBoardModify(m);
		return "redirect:/";
	}
	
	
	// 페이징 처리 ( 기존  boardLessorList에 추가함 )
	 
	@RequestMapping("boardLessorList")
	public String boardLessorList(Criteria cri, Model model) {
		System.out.println("=====================");
		
		List<Board_LessorDTO> list=service.getBlList(cri);
		
		int total = service.blListTotal(cri);
	
	
		model.addAttribute("pageVO", new PageVO(cri, total));
		model.addAttribute("list",list);
		return "boardLessorList";
	}
	
	@RequestMapping("boardNoticeList")
	public String boardNoticeList(Criteria cri, Model model) {
		System.out.println("=========================requestMapping  @boardNoticeList");
		List<Board_NoticeDTO> list=service.getBnList(cri);
		int total = service.bnListTotal(cri);
		model.addAttribute("pageVO", new PageVO(cri, total));
		model.addAttribute("list",list);
		return "boardNoticeList";
	}
	
	@RequestMapping("/")
	public String boardNoticeList(RedirectAttributes attr, HttpSession session)throws Exception {
		System.out.println("@RequestMapping(\"boardNoticeList\")====================");
		List<Board_NoticeDTO> list=service.noticeList();
		session.setAttribute("noticeList", list);
		
		List<Board_LessorDTO> list2=service.boardLessorList();
		session.setAttribute("boardLessorList", list2);
		return "main";
			
		
	}
	
	
	@RequestMapping("boardNotice")
	public ModelAndView boardNotice(@RequestParam("num") int num) {
		
		Board_NoticeDTO bdto=service.boardNotice(num);
		int max_num=service.boardNoticeCount();
		int min_num=1;
		
		ModelAndView mav= new ModelAndView();
		if(num==max_num) {
			mav.addObject("max_num",true);
			
		}else if(num==min_num) {
			mav.addObject("min_num",true);
		}
		mav.addObject("boardNotice",bdto);
		mav.setViewName("boardNotice");
		return mav;
	}
	@RequestMapping("boardLessor")
	public ModelAndView boardLessor(@RequestParam("num") int num) {
		
		Board_LessorDTO ldto=service.boardLessor(num);
		int max_num=service.boardLessorCount();
		int min_num=1;
		
		ModelAndView mav= new ModelAndView();
		if(num==max_num) {
			mav.addObject("max_num",true);
		}else if(num==min_num) {
			mav.addObject("min_num",true);
		}
		
		String content=ldto.getBl_content();
		String[] contents;
		
		if(content.contains("#")) {
			
			contents =content.split("#");
			for (int i=0;i<contents.length;i++){
				String c="content"+i;
				mav.addObject(c,contents[i]);
			}
			
		}else {
			mav.addObject("nosplit",true); //#값 안들었으면 true
		}
		mav.addObject("boardLessor",ldto);
		
		mav.setViewName("boardLessor");
		return mav;
	}
	@RequestMapping("writeAction")
	public String writeAction(Board_LessorDTO m, HttpSession session) {
		System.out.println("writeAction=====================");
		int num=service.boardLessorCount();
		m.setBl_num(num+1);
		LessorDTO ldto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = ldto.getUserid();
		String nickname =ldto.getNickname();
		m.setBl_lessorid(lessorid);
		m.setBl_nick(nickname);
		Date date=new Date();
		System.out.println("Date : "+date);
		m.setBl_date(date);
		System.out.println("insert 전 ldto"+m);
		service.writeAction(m);
		
		
		return "redirect:/";
	}
	

}
