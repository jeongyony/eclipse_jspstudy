<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=java.util.Date" isTreadSafe="ture" %>
    <%@ page import="java.io.* , java.util.*" %>
<!DOCTYPE html>
<%! //선언문은 static와 같은 정적 느낌
	//변수와 메서드를 jsp페이지에서 자유롭게 불러다 사용하고싶다 =>선언문
	String name ="홍길동"; //static String name;	
	//메서드는 따로 뽑아내서 클래스를 작성 -> 메서드를 불러와서 작업 =>빈즈 클래스
		public String getName(){ //내부 public static String getName() >와 같은 느낌
		return name;
	}

%>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 3번째 예제(표현식과 선언문의 활용방법)</title>
</head>
<body>
<%
		float f=2.3f; 
		int i =Math.round(f);//클래스명.정적메서드명(~) => 2.3= 2 (round함수 반올림)
		java.util.Date d = new java.util.Date();
		out.println("d의값은? " + d);
%>
<%
	String str ="git 연습";
	System.out.println("str=> " +str);
	out.println("<h1>" + "Str =" + str );
%>
<hr>
str의 값 출력=<%=str %>
<hr><p>
정수 f의 반올림은? <%=i %> <p>
현재 날자와 시간은? <%=d.toString() %><p>
name의 값은? <%=name %><p>
getName()을 호출? <%=getName() %><p>
</body>
</html>