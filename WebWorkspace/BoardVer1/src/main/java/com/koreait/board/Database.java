package com.koreait.board;

import java.util.List; 
import java.util.ArrayList; 
public class Database {
	public static List<BoardVO> list = new ArrayList();
	 			 // <>꺽새 있으면 BoardVO 객체 주소값만 사용가능, 지우면 개나소나 다 들어갈 수 있게됨
				 // 다 String으로 받기 때문에 넣거나 뺄 때 형변환 계속 해줘야해서 <>타입 정해주는 것
				 // 주소값만 알면 다 명령내릴 수 있음
}