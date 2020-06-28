<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<!-- Main CSS-->
    	<link rel="stylesheet" href="<%=path %>/css/main.css" type="text/css" />
    	<style>
		.content{
		  min-height: calc(100vh - 50px);
		  margin-top: 0px;
		  padding: 30px;
		  background-color: #E5E5E5;
		  -webkit-transition: margin-left 0.3s ease;
		  -o-transition: margin-left 0.3s ease;
		  transition: margin-left 0.3s ease;
		}
		</style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 var userPwReal="${sessionScope.admin.userPw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("新密码不能空");
                     return ;
                 }
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
                 {
                     alert("两次输入的密码不一致");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("修改成功");
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9">
	
		<main class="content">
	      <div class="app-title">
	        <div>
	          <h2><i class="fa fa-dashboard"></i> 修改个人密码</h2>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12">
	          <div class="tile">
	            <div class="tile-body">
	
					<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">
					<table class="table table-bordered" width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
						    <td colspan="2" class='title'><span>密码修改</span></td>
						</tr>
						<tr bgcolor="#FFFFFF">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         用户名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF">
						        <input type="text" value="${sessionScope.admin.userName}" name="userName" size="20" disabled="disabled"/>
						    </td>
						</tr>
						<tr bgcolor="#FFFFFF">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        原密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF">
						        <input type="password" name="userPw" id="userPw" size="22"/>
						    </td>
						</tr>
						<tr bgcolor="#FFFFFF">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         新密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF">
						        <input type="password" id="userPw1" name="userPw1" size="22"/>
						    </td>
						</tr>
						<tr bgcolor="#FFFFFF">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        确认密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF">
						           <input type="password" name="userPw2" id="userPw2" size="22"/>
						    </td>
						</tr>
						<tr bgcolor="#FFFFFF">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
					        <td width="75%" bgcolor="#FFFFFF">
					             <input type="button" value="修改" onclick="check()"/>
					             &nbsp;&nbsp;&nbsp;
					             <input type="reset" value="重置"/>
					             <img id="indicator" src="<%=path %>/img/loading32.gif" alt="Loading..." style="display:none"/>
					        </td>
						</tr>
					</table>
					</form>
					
				</div>
	          </div>
	        </div>
	      </div>
	    </main>
					
   </body>
</html>
