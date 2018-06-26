package vo;

import java.util.Date;

public class Board {

	private int board_num;
	private String user_id;
	private String board_title;
	private String board_detail;
	private Date board_regdate;
	private Date board_lastregdate;
	private String board_pw;

	public Board() {
		super();
	}

	public Board(int board_num, String user_id, String board_title, String board_detail, Date board_regdate,
			Date board_lastregdate, String board_pw) {
		super();
		this.board_num = board_num;
		this.user_id = user_id;
		this.board_title = board_title;
		this.board_detail = board_detail;
		this.board_regdate = board_regdate;
		this.board_lastregdate = board_lastregdate;
		this.board_pw = board_pw;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBoard_detail() {
		return board_detail;
	}

	public void setBoard_detail(String board_detail) {
		this.board_detail = board_detail;
	}

	public Date getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}

	public Date getBoard_lastregdate() {
		return board_lastregdate;
	}

	public void setBoard_lastregdate(Date board_lastregdate) {
		this.board_lastregdate = board_lastregdate;
	}

	public String getBoard_pw() {
		return board_pw;
	}

	public void setBoard_pw(String board_pw) {
		this.board_pw = board_pw;
	}

	@Override
	public String toString() {
		return "Board [board_num=" + board_num + ", user_id=" + user_id + ", board_title=" + board_title
				+ ", board_detail=" + board_detail + ", board_regdate=" + board_regdate + ", board_lastregdate="
				+ board_lastregdate + ", board_pw=" + board_pw + ", getBoard_title()=" + getBoard_title()
				+ ", getBoard_num()=" + getBoard_num() + ", getUser_id()=" + getUser_id() + ", getBoard_detail()="
				+ getBoard_detail() + ", getBoard_regdate()=" + getBoard_regdate() + ", getBoard_lastregdate()="
				+ getBoard_lastregdate() + ", getBoard_pw()=" + getBoard_pw() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}