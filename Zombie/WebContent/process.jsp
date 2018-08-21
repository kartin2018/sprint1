<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
int otp= (Integer) session.getAttribute("number");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{
try
{
/* Class.forName("com.mysql.jdbc.Driver"); */
/* Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", ""); */
/* Statement st=conn.createStatement();
int i=st.executeUpdate("insert into student(name,email,phone)values('"+name+"','"+email+"','"+phone+"')");  */

response.sendRedirect("change.jsp");	
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
else
{%>
<script>
alert("OTP DOES NOT MATCH!!");
</script>

<%
response.sendRedirect("otp.jsp");
} %>
