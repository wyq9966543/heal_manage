<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>企业员工健康管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--<link rel="stylesheet" href="<%=path %>/css/base.css" type="text/css" />
	<link rel="stylesheet" href="<%=path %>/css/menu.css" type="text/css" />-->
	<!-- Main CSS-->
    <link rel="stylesheet" href="<%=path %>/css/main.css" type="text/css" />
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<style type="text/css">
	.app-sidebar {
	  position: fixed;
	  top: 0;
	  bottom: 0;
	  left: 0;
	  padding-top: 20px;
	  width: 230px;
	  overflow: auto;
	  z-index: 10;
	  background-color: #222d32;
	  -webkit-box-shadow: 0px 8px 17px rgba(0, 0, 0, 0.2);
	          box-shadow: 0px 8px 17px rgba(0, 0, 0, 0.2);
	  -webkit-transition: left 0.3s ease,
	 width 0.3s ease;
	  -o-transition: left 0.3s ease,
	 width 0.3s ease;
	  transition: left 0.3s ease,
	 width 0.3s ease;
	}
	</style>
	
	<!--<style type="text/css">
	    div {
			padding:0px;
			margin:0px;
		}
		
		body {
		 scrollbar-base-color:#bae87c;
		 scrollbar-arrow-color:#FFFFFF;
		 scrollbar-shadow-color:#c1ea8b;
		 padding:0px;
		 margin:auto;
		 text-align:center;
		 background-color:#9ad075;
		}
		
		dl.bitem {
			width:148px;
			margin:0px 0px 5px 4px;
		}
		
		dl.bitem dt {
		  background:url(<%=path %>/img/menubg.gif);
		  height:26px;
		  line-height:26px;
		  text-align:center;
		  cursor:pointer;
		}
		
		dl.bitem dd {
		  padding:3px 3px 3px 3px;
		  background-color:#fff;
		}
		
		.fllct
		{
			float:left;
			
			width:90px;
		}
		
		.flrct
		{
			padding-top:3px;
			float:left;
		}
		
		div.items
		{
			line-height:22px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 9px;
		}
		
		span.items
		{
			padding:10px 0px 10px 22px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 12px;
		}
		
		ul {
		  padding-top:3px;
		}
		
		li {
		  height:22px;
		}
		
		.sitemu li {
			padding:0px 0px 0px 22px;
			line-height:24px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 9px;
		}
	</style>
	--><script language='javascript'>var curopenItem = '1';</script>
	<!--<script language="javascript" type="text/javascript" src="<%=path %>/js/menu.js"></script>
	--><base target="main" />
  </head>
  
  <body target="main">
  
  
    <aside class="app-sidebar">
    
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" 
      src="<%=path %>/img/photo.jpg" 
      style="width:60px" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">Admin</p>
          <p class="app-sidebar__user-designation">管理员用户</p>
        </div>
      </div>
    
      <ul class="app-menu">
      
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><span class="app-menu__label">用户管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href='<%=path %>/admin/userinfo/userinfo.jsp' target='main'><i class="icon fa fa-circle-o"></i> 修改个人密码</a></li>
            <li><a class="treeview-item" href='<%=path %>/adminMana.action' target='main'><i class="icon fa fa-circle-o"></i> 用户信息管理</a></li>
            <li><a class="treeview-item" href='<%=path %>/admin/admin/adminAdd.jsp' target='main'><i class="icon fa fa-circle-o"></i> 添加用户</a></li>
          </ul>
        </li>
        
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><span class="app-menu__label">员工档案管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href='<%=path %>/admin/renyuan/renyuanAdd.jsp' target='main'><i class="icon fa fa-circle-o"></i> 新建员工档案</a></li>
            <li><a class="treeview-item" href='<%=path %>/renyuanMana.action' target='main'><i class="icon fa fa-circle-o"></i> 员工档案管理</a></li>
          </ul>
        </li>
        
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><span class="app-menu__label">员工健康管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href='<%=path %>/admin/tijian/tijianAdd.jsp' target='main'><i class="icon fa fa-circle-o"></i> 添加健康记录</a></li>
            <li><a class="treeview-item" href='<%=path %>/tijianMana.action' target='main'><i class="icon fa fa-circle-o"></i> 健康信息管理</a></li>
          </ul>
        </li>
        
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><span class="app-menu__label">病情信息管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href='<%=path %>/admin/jibing/jibingAdd.jsp' target='main'><i class="icon fa fa-circle-o"></i> 添加病情信息</a></li>
            <li><a class="treeview-item" href='<%=path %>/jibingMana.action' target='main'><i class="icon fa fa-circle-o"></i> 病情信息管理</a></li>
            <li><a class="treeview-item" href='<%=path %>/admin/jibing/jibing_search.jsp' target='main'><i class="icon fa fa-circle-o"></i> 病情信息统计</a></li>
          </ul>
        </li>
        
        <li><a class="app-menu__item" href="#" onclick="logout()"><span class="app-menu__label">安全退出系统</span></a></li>
        
      </ul>
    </aside>
   
    <!-- Essential javascripts for application to work-->
    <script src="<%=path %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=path %>/js/popper.min.js"></script>
    <script src="<%=path %>/js/main.js"></script>
    <script src="<%=path %>/js/plugins/bootstrap-datepicker.min.js"></script>
    <script src="<%=path %>/js/plugins/bootstrap-notify.min.js"></script>
    <script language='javascript'>
    function logout()
		{
		   if(confirm("确定要退出本系统吗?"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }else{
		   	   window.parent.location="<%=path %>/admin/index.jsp";
		   }
		}
    </script>
  
	<!--<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
	  <tr>
	    <td style='padding-left:3px;padding-top:8px' valign="top">
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>系统基本操作</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/userinfo/userinfo.jsp' target='main'>个人密码修改</a> </li>
	            <li><a href='<%=path %>/adminMana.action' target='main'>系统信息管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>员工档案管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/renyuan/renyuanAdd.jsp' target='main'>新建员工档案</a> </li>
	            <li><a href='<%=path %>/renyuanMana.action' target='main'>员工档案管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>健康体检管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/tijian/tijianAdd.jsp' target='main'>新建体检数据</a> </li>
	            <li><a href='<%=path %>/tijianMana.action' target='main'>健康体检管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>疾病信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/jibing/jibingAdd.jsp' target='main'>疾病信息添加</a> </li>
	            <li><a href='<%=path %>/jibingMana.action' target='main'>疾病信息管理</a> </li>
	            <li><a href='<%=path %>/admin/jibing/jibing_search.jsp' target='main'>疾病信息统计</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items99_1")'><b>安全退出系统</b></dt>
	        <dd style='display:block' class='sitem' id='items99_1'>
	          <ul class='sitemu'>
	            <li><a href='#' onclick='javascript:window.parent.location="<%=path %>/login.jsp"'>安全退出系统</a></li>
	          </ul>
	        </dd>
	      </dl>
		</td>
	  </tr>
	</table>
	
	
  --></body>
</html>
