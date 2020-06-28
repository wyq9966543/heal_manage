<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
        
        <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
        
        <script language="javascript">
             function check()
             {
                  if(document.formAdd.mingcheng.value=="")
                  {
                      alert("请输入疾病名称");
                      return false;
                  }
                  document.formAdd.submit();
             }
             
        </script>
	</head>

	<body leftmargin="2" topmargin="9">
	
		<main class="content">
	      <div class="app-title">
	        <div>
	          <h2><i class="fa fa-dashboard"></i> 病情信息统计</h2>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12">
	          <div class="tile">
	            <div class="tile-body">
	
					<form action="<%=path %>/jibing_search.action" name="formAdd" method="post">
					     <table class="table table-bordered" width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
							<tr bgcolor="#EEF4EA">
						        <td colspan="3" class='title'><span>病情信息统计</span></td>
						    </tr>
						    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							    <td width="25%" bgcolor="#FFFFFF" align="right">
							        病情名称：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							        <input type="text" name="mingcheng" size="50"/>
							    </td>
							</tr>
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							    <td width="25%" bgcolor="#FFFFFF" align="right">
							        &nbsp;
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							       <input type="button" value="统计" onclick="check()"/>&nbsp; 
							       <input type="reset" value="重置"/>&nbsp;
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
