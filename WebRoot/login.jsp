<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>系统登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!--<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
    --><link rel="stylesheet" type="text/css" href="<%=path %>/css/main.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
 
    
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
 <script language="javascript">
 function check1()
 {                                                                                         
     if(document.ThisForm.userName.value=="")
	 {
	 	alert("请输入用户名");
		document.ThisForm.userName.focus();
		return false;
	 }
	 if(document.ThisForm.userPw.value=="")
	 {
	 	alert("请输入密码");
		document.ThisForm.userPw.focus();
		return false;
	 }
	 document.getElementById("indicator").style.display="block";
	 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
 }

 function callback(data)
 {
    document.getElementById("indicator").style.display="none";
    if(data=="no")
    {
        alert("用户名或密码错误");
    }
    if(data=="yes")
    {
        alert("通过验证,系统登录成功");
        window.location.href="<%=path %>/loginSuccess.jsp";
    }
 }
 </script>
</head>

<body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>员工健康管理系统</h1>
      </div>
      <div class="login-box">
        <form class="login-form" name="ThisForm" method="POST" action="">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>登录</h3>
          <div class="form-group">
            <label class="control-label">用户名</label>
            <input class="form-control" type="text" placeholder="请输入用户名" autofocus  name="userName">
          </div>
          <div class="form-group">
            <label class="control-label">密码</label>
            <input class="form-control" type="password" placeholder="请输入密码" name="userPw">
          </div>
          <div class="form-group btn-container">
          	<div class="utility">
              <div class="animated-checkbox">
                <label>
                  <input type="checkbox"><span class="label-text">记住密码</span>
                </label>
              </div>
            </div>
          	<input name="button" type="button" class="btn btn-primary btn-block" value="登录" onClick="check1()">
            <!--<input name="Submit2" type="reset" class="btn btn-primary btn-block" value="重置">
			--><img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
          </div>
        </form>
      </div>
    </section>
  </body>

</html>

 
<!--<body>
	<br>
	<br>
	<br>
	<br>
	<table width="559" height="423" border="0" align="center" cellpadding="0" cellspacing="0"  background="<%=path %>/img/dfff.jpg">
	 <tr>
	    <td><div align="center" style="FONT-WEIGHT: bold; FONT-SIZE: 35pt;">电子健康档案管理系统</div></td>
	 </tr>
	 <tr>
		<td width="559">
			<form name="ThisForm" method="POST" action="">
				<table width="410" height="198" border="0" align="right" cellpadding="0" cellspacing="0">
					<tr>
						<td height="10" colspan="2"></td>
					</tr>
			        <tr>
					    <td width="54" height="22" valign="bottom">
						    <span class="STYLE15" >用户名：</span>
						</td>
						<td width="356" valign="bottom">
					        <input name="userName"  type="text" class="input2" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					<tr>
						<td height="10" colspan="2" valign="bottom"></td>
					</tr>
					<tr>
						<td height="31" colspan="2" valign="top" class="STYLE15">
						     密&nbsp;&nbsp;&nbsp;&nbsp;码：
							<input name="userPw" type="password" size="21" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'">
						</td>
					</tr>
					<tr>
						<td height="10" colspan="2" valign="bottom"></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">&nbsp; &nbsp; &nbsp; &nbsp;
							<input name="button" type="button" class="submit1" value="登录" onClick="check1()"> &nbsp;
							<input name="Submit2" type="reset" class="submit1" value="重置">
							<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
						</td>
				    </tr>
                </table>
	        </form>
        </td>
     </tr>
    </table>
</body>
-->