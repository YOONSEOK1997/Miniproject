package data.service;

import java.util.List;
import java.util.Map;

import data.dto.BoardDto;

public interface BoardServiceInter {
   public int getMaxNum();
   public void updateReStep(int reg, int restep);
   
   public int getTotalCount(); // 페이징 처리 시 전체 개수 필요
   public List<BoardDto> getList(int start, int perpage);
   
   public void insertBoard(BoardDto dto);
   public void updateReadCount(int num);
   public BoardDto getData(int num);
   
   public void updateChu(int chu, int num);
   
   public void updateBoard(BoardDto dto);
   public void deleteBoard(int num);
}