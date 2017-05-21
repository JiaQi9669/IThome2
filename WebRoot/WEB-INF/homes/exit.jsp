<%@ page language="java" pageEncoding="UTF-8"%>
<% 
  session.invalidate();
  /* response.sendRedirect("http://localhost:8080/RS/web/login.jsp"); */
  response.sendRedirect(request.getContextPath()+"/index.jsp");
 
%>