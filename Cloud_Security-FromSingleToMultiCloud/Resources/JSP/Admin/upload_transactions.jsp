<%@page import="com.kumar.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.kumar.DAO.UserDAO"%><html>
<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/pagination.js"></script>

</head>
<body onload="startTimer()">
<img src="<%=request.getContextPath() %>/Resources/Images/cloud title.png" style="width:100%;"></img>

<!-- Main Menu Development (Starts)-->

<div id="mainmenu">
  <ul class="glossymenu">
    <li><a href="<%=request.getContextPath()%>/Resources/JSP/Admin/adminhome.jsp" title="Admin Home"><b>Home</b></a></li>
    <li><a href="<%=request.getContextPath()%>/Profile" title="Admin Profile"><b>Profile</b></a></li>
    <li><a href="<%=request.getContextPath()%>/ServerList?submit=get" title="Cloud Server Details" onclick=""><b>Servers</b></a></li>
    <li><a href="<%=request.getContextPath()%>/Resources/JSP/Admin/fault_tolerance.jsp" title="Cloud Fault Tolerance"><b>Fault Tolerance</b></a></li>
    <li><a href="<%=request.getContextPath()%>/UserList?submit=get" title="Users Details"><b>Members</b></a></li>
    <li class="current"><a href="<%=request.getContextPath()%>/Resources/JSP/Admin/transactions.jsp" title="View All Users Transactio Details"><b>Transactions</b></a></li>
    <li><a href="<%=request.getContextPath()%>/" title="Admin Logout"><b>Sign Out</b></a></li>
  </ul>
</div>


<%
    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0,noOfClouds=0,userid;
	String fileName="",fileTypes="",username="",date="",time="";
	
	UserDAO userDAO = UserDAO.getInstance();
	
%>	

<div id="a3" align="right" style="position:absolute;top:230px;left:50px;width: 800px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="800px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#000000" style="font-style: bold" size="5">Upload File Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>ID</th>
			<th>File Name</th>
			<th>File Type</th>
			<th>No of Clouds</th>
			<th>Member</th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			fileName=rs.getString(2);
			fileTypes=rs.getString(3);
			noOfClouds=rs.getInt(8);
			userid=rs.getInt(6);
			
			username = userDAO.getUsername(userid);
			
			 
%>
			<tr align="center">
						<td><%=id%></td>
						<td><%=fileName%></td>
						<td><%=fileTypes%></td>
						<td><%=noOfClouds%></td>
						<td><%=username%></td>
						
			</tr>
<%
		}
    
}
%>
  	 </table>
  	 </p>
   </div>
 </form>
   

<div id="pageNavPosition" style="position:absolute;top:600px;left:675px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',6); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>

</body>
</html>


