<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		
        <script language="javascript">
           function jibingDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/jibingDel.action?id="+id;
               }
           }
           
           function jibingAdd()
           {
                 var url="<%=path %>/admin/jibing/jibingAdd.jsp";
				 window.location.href=url;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2">
	
		<main class="content">
	      <div class="app-title">
	        <div>
	          <h2><i class="fa fa-dashboard"></i> 病情信息管理</h2>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12">
	          <div class="tile">
	            <div class="tile-body">
	
					<table class="table table-bordered" width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="44">&nbsp;病情信息管理&nbsp;</td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" height="22">
							<td width="5%">序号</td>
							<td width="10%">病情名称</td>
							<td width="10%">病症</td>
							<td width="10%">员工姓名</td>
							
							<td width="10%">患病时间</td>
							<td width="10%">责任医生</td>
							<td width="10%">操作</td>
				        </tr>	
						<s:iterator value="#request.jibingList" id="jibing" status="ss">
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#ss.index+1"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
							    <s:property value="#jibing.mingcheng"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
							    <s:property value="#jibing.zhengzhuang"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#jibing.renyuan.xingming"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
							    <s:property value="#jibing.huanshijian"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
							    <s:property value="#jibing.yisheng"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<a href="#" onclick="jibingDel(<s:property value="#jibing.id"/>)" class="pn-loperator">删除</a>
							</td>
						</tr>
						</s:iterator>
					</table>
					
					<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
					  <tr>
					    <td>
					      <input type="button" value="添加" style="width: 80px;" onclick="jibingAdd()" />
					    </td>
					  </tr>
				    </table>
				    
				</div>
	          </div>
	        </div>
	      </div>
	    </main>  
				    
	</body>
</html>
