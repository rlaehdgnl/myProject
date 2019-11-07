<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%
String sessName = null;
if(request.isRequestedSessionIdValid()){
	sessName = (String)session.getAttribute("sessName");
}
%>
<div class="topnav">
  <a href="index.jsp">Home</a>  
  <a href="daejinpyo/register">대진표등록</a>
  <a href="entrant/register">참가자등록</a>
  <a href="daejinpyo/list">대진표 조회/수정</a>
  <a href="entrant/list">참가자 조회/수정</a>
  

  <%--
  	 String userid = null;
     String name = null;
     if(request.isRequestedSessionIdValid()) {
    	 userid = (String)session.getAttribute("sessID");
		 name = (String)session.getAttribute("sessName");
     }
     
     //out.println(id);
     if (userid != null) { 
	      out.println("<a href='logout.do' style='float:right'>LogOut</a>");	 
	      out.println("<font color='white' style='float:right; padding:12px;'>");
	      out.println( name + "님 환영합니다.");  
	      out.println( "</font>");
     } else { 
  	  	out.println("<a href='login.do' style='float:right'>Login</a>");
     } 
 --%>
  
  <%--
  if (stat != null && stat.equals("ok"))  {
	   out.println("<a href=\"logout.jsp\" style=\"float:right\">LogOut</a>");
  } else {
	  out.println("<a href=\"login.jsp\" style=\"float:right\">Login</a>");
  }  
 --%>
  
</div>