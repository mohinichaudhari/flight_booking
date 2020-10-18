<jsp:useBean id="admin" class="com.dto.Admin" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>
<%!
	boolean flag;
	String name = "Sushant";
	String password = "123";
	boolean compare(String adminName,String adminPass){
		if(adminName.equals(name)&&adminPass.equals(password)){
			System.out.println("If loop");
			flag=true;
		}
		return flag;
	}
%>


<% 
	String adminName = request.getParameter("name");
	String adminPass = request.getParameter("password");
	System.out.println(adminName);
	System.out.println(adminPass);
	
	boolean b = compare(adminName,adminPass);
	if(b){
		System.out.println("Validate ");
		response.sendRedirect("adminhome.jsp");
	}else{
		System.out.println("Validate Error ");
		response.sendRedirect("login.jsp?error_msg=wrong credentials");
	}
%>