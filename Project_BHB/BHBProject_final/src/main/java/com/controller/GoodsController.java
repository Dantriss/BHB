package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.BookMarkDTO;
import com.dto.Criteria;
import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.dto.LessorDTO;
import com.dto.MemberDTO;
import com.dto.PageVO;
import com.service.GoodsService;
import com.service.LessorService;

@Controller
public class GoodsController {
	@Autowired
	GoodsService service;
	
	@Autowired
	LessorService lessorservice;
	
	@RequestMapping("loginCheck/delMPBookMark")
	 public String delMPBookMark(@RequestParam("check2") ArrayList<String> list)throws Exception{
		System.out.println("loginCheck/delMPBookMark"+list);
		service.delBookMark(list);
		return "redirect:../loginCheck/bookMark";
		
	}
	@RequestMapping("loginCheck/delYPBookMark")
	 public String delYPBookMark(@RequestParam("check1") ArrayList<String> list)throws Exception{
		System.out.println("loginCheck/delMPBookMark"+list);
		service.delBookMark(list);
		return "redirect:../loginCheck/bookMark";
		
	}
	
	
	@RequestMapping(value = "/loginCheck/bookMarkDelete")
    @ResponseBody
    public void cartDelte(@RequestParam("num") int num) {
        System.out.println(num);
        service.bookMarkDelete(num);
    }
	@RequestMapping("/loginCheck/addBookMark_yp")
    public String addBookMark_yp(BookMarkDTO bookmark, HttpSession session) {
       
		MemberDTO mdto= (MemberDTO)session.getAttribute("login");
	
		
        bookmark.setUserid(mdto.getUserid());
        bookmark.setPhone1(mdto.getPhone1());
        bookmark.setPhone2(mdto.getPhone2());
        bookmark.setPhone3(mdto.getPhone3());
        bookmark.setUserName(mdto.getUsername());
        int num=service.bookMarkcount();
        //service에서 max(num)값 구해오기
      
        bookmark.setNum(num+1);
        //num값에 넣어줌
		
		LessorDTO ldto=lessorservice.lessorOffer(bookmark.getLessorid());
		bookmark.setNickname(ldto.getNickname());
		
		
       
        int overlap_yp=service.bookmarkOverlap_yp(bookmark);
        if(overlap_yp>0) {
        	session.setAttribute("mesg", "해당 상품이 장바구니에 이미 있습니다.");
        	return "redirect:/goodsRetrieveYP?gCode="+bookmark.getgCode();
        }
        session.setAttribute("mesg", "해당 상품을 장바구니에 담았습니다.");
        service.addBookMark_yp(bookmark);
        return "redirect:/goodsRetrieveYP?gCode="+bookmark.getgCode();
    }
	@RequestMapping("/loginCheck/addBookMark_mp")
    public String addBookMark_mp(BookMarkDTO bookmark, HttpSession session) {
       
		MemberDTO mdto= (MemberDTO)session.getAttribute("login");
		
        bookmark.setUserid(mdto.getUserid());
        bookmark.setPhone1(mdto.getPhone1());
        bookmark.setPhone2(mdto.getPhone2());
        bookmark.setPhone3(mdto.getPhone3());
        bookmark.setUserName(mdto.getUsername());
       
        
		LessorDTO ldto=lessorservice.lessorOffer(bookmark.getLessorid());
		bookmark.setNickname(ldto.getNickname());
		
		int num=service.bookMarkcount();
        bookmark.setNum(num+1);
       
        
        
        
        int overlap_mp=service.bookmarkOverlap_mp(bookmark);
        if(overlap_mp>0) {
        	session.setAttribute("mesg", "해당 상품이 장바구니에 이미 있습니다.");
        	return "redirect:/goodsRetrieveMP?gCode="+bookmark.getgCode();
        }
        session.setAttribute("mesg", "해당 상품을 장바구에 담았습니다.");
        service.addBookMark_mp(bookmark);


        return "redirect:/goodsRetrieveMP?gCode="+bookmark.getgCode();
    }
	@RequestMapping("loginCheck/bookMark")
	public String bookMark(RedirectAttributes attr,HttpSession session)throws Exception {
		
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		
		String userid = dto.getUserid();
		
		List<BookMarkDTO> list=service.bookMark(userid);
		//userid의 bookmarkdto list 가져오기
		
		List<BookMarkDTO> mplist=new ArrayList<BookMarkDTO>();
		List<BookMarkDTO> yplist=new ArrayList<BookMarkDTO>();
		int deposit;
		//변수선언
		
		for(BookMarkDTO bdto :list) {
			deposit=bdto.getDeposit();
			if(deposit>0) {
				mplist.add(bdto);
			}else {
				yplist.add(bdto);
			}
			
		}
		System.out.println("mplist========"+mplist);
		System.out.println("yplist========"+yplist);
		attr.addFlashAttribute("mplist",mplist);
		attr.addFlashAttribute("yplist",yplist);
		return "redirect:../bookMark";
			
		
	}
	
	@RequestMapping("goodsMPAdd")
	public String goodsMPAdd(Goods_MP_DTO mpdto,Model model,HttpSession session)throws Exception {
		LessorDTO dto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = dto.getUserid();
		int gCode=service.goodsMPCount()+1; //gCode 안겹치게 처리
		
		String area=mpdto.getArea()+"m²";
		mpdto.setArea(area); //m²붙이기
		
		mpdto.setLessorid(lessorid);
		mpdto.setgCode(gCode);
		service.goodsMPAdd(mpdto);
		model.addAttribute("goodsMPAdd", "물품등록성공");
		return "main";
			
		
	}
	@RequestMapping("goodsYPAdd")
	public String goodsYPAdd(Goods_YP_DTO ypdto,Model model,HttpSession session)throws Exception {
		LessorDTO dto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = dto.getUserid();
		int gCode=service.goodsYPCount()+1;
		
		String area=ypdto.getArea()+"m²";
		ypdto.setArea(area);
		
		ypdto.setLessorid(lessorid);
		ypdto.setgCode(gCode);
		
		service.goodsYPAdd(ypdto); 
		model.addAttribute("goodsYPAdd", "물품등록성공");
		 
		return "main";
			
		
	}
	
	@RequestMapping("goodsList")
	public ModelAndView goodsList(@RequestParam("room") String room,Criteria cri) {
		
	

		  List<Goods_MP_DTO> All=service.SearchByRoom(room);
	
		  cri.setAmount(4);
		  int pageNum=cri.getPageNum();
		  int total=service.countSearchByRoom(room);
		  System.out.println("total@@@@@@@@"+total);
		  //All list의 total 개수
	
		  
		  List<Goods_MP_DTO> list =new ArrayList<Goods_MP_DTO>();
		  
		  if(total>pageNum*4) {
			  list=All.subList(4*(pageNum-1), 4*pageNum);
			  //pageNum:1 0~4 0123
			  //pageNum:2 4~8 4567
			  System.out.println("list@@@@@@@@@@@"+list);
		  }else {
			  list=All.subList(4*(pageNum-1),total);
		  }
		  
		  
		  ModelAndView mav= new ModelAndView();
		  
		  mav.addObject("goodsListMP",list);
		  mav.addObject("goodsListYP",null);
		  mav.addObject("ROOM",true);
		  mav.addObject("room",room);
		  
		  mav.addObject("pageVO",new PageVO(cri, total));

		  
		  mav.setViewName("goodsLists");
		return mav;
			
		
	}
	@RequestMapping("goodsListMP")
	public ModelAndView goodsListMP(Criteria cri) {
		List<Goods_MP_DTO> list = service.goodsListMP();//mp뽑아오기
		 cri.setAmount(4);//cri에 amout값 지정
		 int pageNum=cri.getPageNum();
		 
		int total=list.size();//mp개수
		
		System.out.println("total@@@@"+total);
		
		List<Goods_MP_DTO> list2=new ArrayList<Goods_MP_DTO>();
		 
		  if(total>pageNum*4) {
			  list2=list.subList(4*(pageNum-1), 4*pageNum);
			  //pageNum:1 0~4 0123
			  //pageNum:2 4~8 4567
		
		  }else {
			  list2=list.subList(4*(pageNum-1),total);
		  }
		  
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("goodsListMP",list2);
		mav.addObject("goodsListYP",null);
		mav.addObject("MP",true);
		  mav.addObject("pageVO",new PageVO(cri, total));
		mav.setViewName("goodsLists");
		return mav;
	}//월세
	
	@RequestMapping("goodsListYP")
	public ModelAndView goodsListYP(Criteria cri) {
		List<Goods_YP_DTO> list = service.goodsListYP();
		cri.setAmount(4);
		int pageNum=cri.getPageNum();
		int total=list.size();
		
		List<Goods_YP_DTO> list2=new ArrayList<Goods_YP_DTO>();
		if(total>pageNum*4) {
			  list2=list.subList(4*(pageNum-1), 4*pageNum);
			  //pageNum:1 0~4 0123
			  //pageNum:2 4~8 4567
		
		  }else {
			  list2=list.subList(4*(pageNum-1),total);
		  }
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("goodsListMP",null);
		mav.addObject("goodsListYP",list2);
		mav.addObject("YP",true);
		  mav.addObject("pageVO",new PageVO(cri, total));
		mav.setViewName("goodsLists");
		return mav;
	}//전세
	
	@RequestMapping("goodsListLoc")
	public ModelAndView goodsListLoc(@RequestParam("location") String location,Criteria cri) {
		
		List<Goods_MP_DTO> All=service.SearchByLoc(location);
		System.out.println("ㅁㅁㅁ"+All);
		cri.setAmount(4);
		int pageNum=cri.getPageNum();
		int total=All.size();
		
		List<Goods_MP_DTO> list = new ArrayList<Goods_MP_DTO>();
		if(total>pageNum*4) {
			  list=All.subList(4*(pageNum-1), 4*pageNum);
			  //pageNum:1 0~4 0123
			  //pageNum:2 4~8 4567
		
		  }else {
			  list=All.subList(4*(pageNum-1),total);
		  }
		
		
		ModelAndView mav= new ModelAndView();
		mav.addObject("goodsListMP",list);
		mav.addObject("goodsListYP",null);
		mav.addObject("location",location);
		mav.addObject("LOC",true);
		  mav.addObject("pageVO",new PageVO(cri, total));
		mav.setViewName("goodsLists");
		return mav;
	}//지역별 
	
	
	 @RequestMapping(value= {"goodsRetrieveYP","goodsRetrieveMP"})  //.goodsRetrieve.jsp
	 public ModelAndView goodsRetrieve(@RequestParam("gCode") String gCode, HttpServletRequest request) {
		 String requestUrl=(String)request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		 ModelAndView mav= new ModelAndView();
		
		 
		 if(requestUrl.contains("goodsRetrieveYP")) {
			
			 Goods_YP_DTO ypdto=service.goodsRetrieveYP(gCode);
			 
			 
			 mav.addObject("goodsRetrieveYP", ypdto);
			 mav.setViewName("goodsRetrieve");
			 return mav;
		 }else if (requestUrl.contains("goodsRetrieveMP")){
			
			 Goods_MP_DTO mpdto=service.goodsRetrieveMP(gCode);
			 System.out.println("mpdto.gimage4 ==== "+mpdto.getgImage4());
			 mav.addObject("goodsRetrieveMP", mpdto);
			 mav.setViewName("goodsRetrieve");
			 return mav;
		 }
		 mav.setViewName("main");
		return null;
		 
	 }
	 
	
}
