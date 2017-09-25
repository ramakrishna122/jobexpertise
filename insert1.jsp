<%@ page import ="java.sql.*" %>
<%
    String cin = request.getParameter("name");    
    String cname = request.getParameter("comment");
	System.out.println(cin);
	System.out.println(cname);
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","ram","it");  
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into jobex values ('" + cin + "','" + cname + "')");
   
        response.sendRedirect("index.jsp");
    
%>
