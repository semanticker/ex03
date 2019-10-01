package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		log.info("test");
		mapper.insertReturnKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		
		int result = mapper.update(board);
		
		// TODO Auto-generated method stub
		return result == 1;
	}

	@Override
	public boolean remove(Long bno) {
		int result = mapper.delete(bno);
		// TODO Auto-generated method stub
		return result == 1;
	}

	//@Override
//	public List<BoardVO> getList() {
//		return mapper.getList();
//	}
	
	@Override
	public List<BoardVO> getList(Criteria criteria) {
		
		log.info("get List with criteria: " + criteria);
		return mapper.getListWithPaging(criteria);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("gget total count");
		return mapper.getTotalCount(cri);
	}

}
