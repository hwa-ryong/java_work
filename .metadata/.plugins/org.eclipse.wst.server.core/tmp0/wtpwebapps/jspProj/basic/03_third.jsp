<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  <!-- 지시어 Directive -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_third</title>
</head>
<body>
<h1>03_third</h1>
<%!
	//declaration : 클래스 정의부
	
	//멤버 변수
	String name = "나는화룡";
	int age = 30;
	boolean marriage = false;
	
	void meth_1() {
		System.out.println("meth_1() 실행");
	}
	
	//System.out.println("정의부에서 실행구문 불가");
	
	
	public void jspInit() {
		System.out.println("jspInit() 실행");
	}
	
	public void jspDestroy() {
		System.out.println("jspDestroy() 실행");
	}
	
	
%>

<%!
	//int age = 23;  오류  멤버 변수가 위에 거랑 중첩돼서 오류난거임.
	int[] arr = {11, 22, 33, 44, 55, 66};

%>
<%
 	System.out.println("scriptlet 실행:" + age);
	int age = 23; // 지역 변수
	System.out.println("scriptlet 실행:" + age);
	//int age = 17;   //지역변수 중첩불가
	
	String str = "아기";
	
	out.println("str:" + str);
	/*  메소드 정의 불가 --> scriptlet은 _jspService() 인 메소드 이므로 메소드 중첩 정의 불가
	void meth_1() {
		System.out.println("meth_2() 실행");
	} */

%>
</body>
</html>