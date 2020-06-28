<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE>
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
        <script src="<%=path %>/ckeditor/ckeditor.js"></script>
        
        <script language="javascript">
             function check()
             {
                  if(document.formAdd.xingming.value=="")
                  {
                      alert("请输入姓名");
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
	          <h2><i class="fa fa-dashboard"></i> 新建员工档案</h2>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12">
	          <div class="tile">
	            <div class="tile-body">
	
					<form action="<%=path %>/renyuanAdd.action" name="formAdd" method="post">
						     <table class="table table-bordered" width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
								<tr bgcolor="#EEF4EA">
							        <td colspan="3" class='title'><span>添加员工信息</span></td>
							    </tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         姓名：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="xingming" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         性别：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="radio" name="xingbie" value="男" style="border: 0" checked="checked"/>男
								        &nbsp;&nbsp;
								        <input type="radio" name="xingbie" value="女" style="border: 0"/>女
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         年龄：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="nianling" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         居住住址：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="dizhi" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         出生日期：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input name="chusheng" class="Wdate" readonly="readonly" type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         身份证：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="shenfenzheng" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         联系方式：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="lianxi" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         部门职务：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="danwei" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         民族：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="menzu" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         文化程度：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="wenhua" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         婚姻状况：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								        <input type="text" name="hunyin" size="50"/>
								    </td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								         备注信息：
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								    
								    	<p style="width:50%"><textarea name="editor1" id="editor1"></textarea></p>
							            <script>
							                CKEDITOR.replace( 'editor1' );
							            </script>
								    
								         <!--<FCK:editor instanceName="beizhu"  basePath="/fckeditor" width="300" height="130" value="" toolbarSet="Basic">
			                             </FCK:editor>
								    --></td>
								</tr>
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								    <td width="25%" bgcolor="#FFFFFF" align="right">
								        &nbsp;
								    </td>
								    <td width="75%" bgcolor="#FFFFFF" align="left">
								       <input type="button" value="提交" onclick="check()"/>&nbsp; 
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
