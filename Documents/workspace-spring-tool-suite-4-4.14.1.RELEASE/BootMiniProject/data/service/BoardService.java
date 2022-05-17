package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.BoardDto;
import data.mapper.BoardMapperInter;

@Service  //자동으로 bean으로 등록됨
//서비스라고하는 이유는 로직처리를 위한 기능으로 분리하기 위함
public class BoardService implements BoardServiceInter {

   @Autowired  //자동주입
   private BoardMapperInter mapper;
   
   
   @Override
   public int getMaxNum() { return mapper.getMaxNum(); }
  
   @Override
   public void updateReStep(int reg, int restep) {
      
   /* 아래처럼 Map으로 묶어서 보내야하기 때문에 service에 로직을 넣은것 */
      Map<String, Integer> map = new HashMap<>();
      map.put("reg", reg);
      map.put("restep", restep);
      mapper.updateReStep(map);
   }

   @Override
   public int getTotalCount() {
      // TODO Auto-generated method stub
      return mapper.getTotalCount();
   }

   @Override
   public List<BoardDto> getList(int start, int perpage) {

      Map<String, Integer> map = new HashMap<>();
      map.put("start", start);
      map.put("perpage", perpage);
      return mapper.getList(map);
   }

   @Override
   public void insertBoard(BoardDto dto) {
      // 제일 복잡함
      int reg = dto.getReg();
      int restep = dto.getRestep();
      int relevel = dto.getRelevel();
      int num = dto.getNum();
      
      
      if(num==0)
      { //새글 인 경우
         reg=this.getMaxNum()+1;
         restep=0;
         relevel=0;
      }else
      { //답글인 경우
         //기존 restep보다 큰 값은 모두 1 증가하기
         this.updateReStep(reg, restep);
         //기존 값들 보다 1 증가
         restep++;
         relevel++;
      }
      dto.setReg(reg);
      dto.setRestep(restep);
      dto.setRelevel(relevel);
      // insert
      mapper.insertBoard(dto);
   }
  
   @Override
   public void updateReadCount(int num) {
      // 
      mapper.updateReadCount(num);
   }

   @Override
   public BoardDto getData(int num) {
      // TODO Auto-generated method stub
      return mapper.getData(num);
   }

}