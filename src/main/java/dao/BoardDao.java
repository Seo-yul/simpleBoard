package dao;

import java.util.List;

import vo.Board;

public interface BoardDao {
	public int insertBoard(Board board);
	public List<Board> selectBoard();
}
