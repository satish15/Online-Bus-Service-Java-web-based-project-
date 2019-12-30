<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="sis.com.bu.SignupUser"%>

<%
  Object obj =request.getAttribute("User");
   List<SignupUser> user=null;
   if(obj!=null){
	   user=(List<SignupUser>)obj;
   }
%>
<%for (SignupUser ref:user){ %>
<%=ref.getName() %>
<%=ref.getEmail() %>
<%=ref.getPassword() %>
<%=ref.getConpassword() %>
<%=ref.getContect() %>
<%=ref.getGender() %>
<%=ref.getSecurity() %>

<%} %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>