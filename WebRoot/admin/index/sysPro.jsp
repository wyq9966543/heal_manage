<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="sun.management.ManagementFactory" %>
<%@ page import="com.sun.management.OperatingSystemMXBean" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

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
	</head>

	<body leftmargin="2" topmargin="9">
	 
	 <main class="content">
      <div class="app-title">
        <div>
          <h2><i class="fa fa-dashboard"></i> 首页</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
            
			            
	            <table class="table table-bordered" width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				  <tr bgcolor="#EEF4EA">
				    <td colspan="2" class='title'><span>系统基本信息</span></td>
				  </tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">操作系统版本：</td>
				    <td>Windows 10</td>
				    <!--<td width="75%" bgcolor="#FFFFFF"><%=System.getProperty("os.name") %>&nbsp;&nbsp;<%=System.getProperty("os.version") %></td>
				  --></tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">操作系统类型：</td>
				    <td> x64 </td>
				    <!--<td><%=System.getProperty("os.arch") %> x32,x86 </td>
				  --></tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">用户,目录,临时目录：</td>
				    <td>D:\Users\Dsx\Workspaces\.metadata\.me_tcat\webapps</td>
				    <!--<td><%=application.getRealPath("/")%></td>
				  --></tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">JDK版本：</td>
				    <td>1.8.0.013</td>
				    <!--<td><%=System.getProperty("java.version") %></td>
				  --></tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">JKD安装目录：</td>
				    <td>D:\Users\Dsx\AppData\Local\Genuitec\Common\binary\com.sun.java.jdk.win64.x64_1.8.0.013\jre</td>
				    <!--<td><%=System.getProperty("java.home") %></td>
				  --></tr>
				  <tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">总内存/剩余内存：</td>
				    <td>
		                <% OperatingSystemMXBean osmb = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean();%>
		                <b>4096</b>MB&nbsp;&nbsp;/&nbsp;&nbsp;<b><%=osmb.getFreePhysicalMemorySize() / 1024/1024 %></b>MB
						<!--<b><%=osmb.getTotalPhysicalMemorySize() / 1024/1024 %></b>MB&nbsp;&nbsp;/&nbsp;&nbsp;<b><%=osmb.getFreePhysicalMemorySize() / 1024/1024 %></b>MB
		            --></td>
				  </tr>
				</table>
			            
            
            </div>
          </div>
        </div>
      </div>
    </main>
        
	 </body>
</html>
