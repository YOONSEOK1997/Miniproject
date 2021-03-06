package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.dto.BoardDto;
import data.service.BoardService;
import data.service.BoardServiceInter;
import util.FileUtil;

@Controller
@RequestMapping("/board")
public class BoardController {

   @Autowired
   private BoardService service;
   
   @GetMapping("/list")
   public ModelAndView list()
   {
      ModelAndView mview = new ModelAndView();
      int totalCount; // 총 개수
      
      totalCount = service.getTotalCount();
      mview.addObject("totalCount", totalCount);
      
      mview.setViewName("/board/boardlist");
      return mview;
   }
   @GetMapping("/form")
   public ModelAndView form(@RequestParam Map<String, String>map)
   {
	   	ModelAndView mview=new ModelAndView();
	   	//답글일 경우 읽어야할 5개의 값(새글일경우는 값이 다 num)
	   	String currentPage=map.get("currentPage");
	   	String num=map.get("num");
	   	String reg=map.get("reg");
	   	String restep=map.get("restep");
	   	String relevel=map.get("relevel");
	   	
		mview.addObject("currentPage",currentPage==null?"1":currentPage);
		mview.addObject("num",num==null?"0":num);
		mview.addObject("reg",reg==null?"0":reg);
		mview.addObject("restep",restep==null?"0":restep);
		mview.addObject("relevel",relevel==null?"0":relevel);
		
	   	mview.setViewName("/board/boardform");
	   	return mview;
   }
   @PostMapping("/insert")
   public String insert( 
		   @ModelAttribute BoardDto dto,
		   @RequestParam String currentPage,
		   @RequestParam ArrayList<MultipartFile> upload,
		   HttpSession session,
		   HttpServletRequest request
		   ) {
	   	//사진을 저장할 경우
	   String path=request.getServletContext().getRealPath("/save");
	   //세션으로부터 로그인한 아이디 얻기
	   String loginid=(String)session.getAttribute("loginid");
	   dto.setId(loginid); //dto에 저장
	   
	   //사진을 업로드 안했을경우 photos 에 'no'라고 저장
	   if(upload.get(0).getOriginalFilename().equals("")) {
		   dto.setPhotos("no");
	   }else { //아니면 
		   FileUtil fileUtil=new FileUtil();
		   String photos="";
		   for(MultipartFile f:upload) //upload에서 multipartfile을 꺼내서 반복
		   {
			   String rename=fileUtil.changeFileName(f.getOriginalFilename());
			   photos+=rename+","; //파일1,파일2,파일3,
			   File file=new File(path+"//"+rename);
			   try {
				   f.transferTo(file); //save폴더에 업로드됨
			   } catch (IllegalStateException | IOException e) {
				   
				   e.printStackTrace();
			   }
		   }
		   //마지막 컴마 제거
		   photos=photos.substring(0,photos.length()-1);
		   System.out.println(photos);
		   dto.setPhotos(photos);
	   }
	   //db insert
	   service.insertBoard(dto);
	   
	   return "redirect:list?currentPage="+currentPage; //해당페이지로 이동
   }
}