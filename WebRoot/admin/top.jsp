<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML>
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css">
	
	<!-- Main CSS-->
    <link rel="stylesheet" href="<%=path %>/css/main.css" type="text/css" />
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script language='javascript'>
		var preFrameW = '206,*';
		var FrameHide = 0;
		var curStyle = 1;
		var totalItem = 9;
		function ChangeMenu(way){
			var addwidth = 10;
			var fcol = top.document.all.btFrame.cols;
			if(way==1) addwidth = 10;
			else if(way==-1) addwidth = -10;
			else if(way==0){
				if(FrameHide == 0){
					preFrameW = top.document.all.btFrame.cols;
					top.document.all.btFrame.cols = '0,*';
					FrameHide = 1;
					return;
				}else{
					top.document.all.btFrame.cols = preFrameW;
					FrameHide = 0;
					return;
				}
			}
			fcols = fcol.split(',');
			fcols[0] = parseInt(fcols[0]) + addwidth;
			top.document.all.btFrame.cols = fcols[0]+',*';
		}
		
		function logout()
		{
		   if(confirm("确定要退出本系统吗?"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
    </script>
  </head>
  
  <body bgColor='#ffffff' style="margin: 0;padding: 0">
  
  <header class="app-header">
  <a class="app-header__logo" href='<%=path %>/admin/index/sysPro.jsp' target='main' style="font-size:26px; font-weight: bold;padding: 0">员工健康管理系统</a>
      <a class="app-sidebar__toggle" href="javascript:ChangeMenu(0);"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
          
        
        <li>
        	<a class="app-nav__item"  href='<%=path %>/admin/userinfo/userinfo.jsp' target='main'><i class="fa fa-user fa-lg"></i></a>
        </li>
        <li>
        	<a class="app-nav__item" href="#" onclick="logout()"><i  class="fa fa-sign-out fa-lg"></i></a>
        </li>
          
      </ul>
    </header>
    
  	<!-- Essential javascripts for application to work-->
    <script src="<%=path %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=path %>/js/popper.min.js"></script>
    <script src="<%=path %>/js/main.js"></script>
    <script src="<%=path %>/js/plugins/bootstrap-datepicker.min.js"></script>
    <script src="<%=path %>/js/plugins/bootstrap-notify.min.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<%=path %>/js/plugins/pace.min.js"></script>
  	
	<!--<table width="100%" border="0" cellpadding="0" cellspacing="0" background="<%=path %>/img/topbg.gif">
	  <tr>
	    <td width='30%' height="60" style="font-size:26px; font-weight: bold;">&nbsp;&nbsp;企业员工健康管理系统</td>
	    <td width='70%' align="right">
	    	<table width="750" border="0" cellspacing="0" cellpadding="0">
		      <tr>
			      <td align="right" height="26" style="padding-right:10px;line-height:26px;font-size:17px">
			        	<font style="font-size:16px; font-weight: bold;">
			        	    您好：管理员&nbsp;&nbsp;&nbsp;&nbsp;
			        	</font>
			        	
			        	[<a href="#" onclick="logout()">注销退出</a>]
						[<a href="javascript:ChangeMenu(0);">显示主框架</a>]
			      </td>
	          </tr>
	        </table>
	    </td>
	  </tr>
	</table>
  --></body>
</html>
