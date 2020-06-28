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
        
        <script language="javascript">
             function check()
             {
                  if(document.formAdd.renyuanId.value=="")
                  {
                      alert("请选择人员");
                      return false;
                  }
                  if(document.formAdd.mingcheng.value=="")
                  {
                      alert("请输入疾病名称");
                      return false;
                  }
                  document.formAdd.submit();
             }
             
            function renyuanAll()
		    {
		       	var strUrl = "<%=path %>/renyuanAll.action";
		       	var l=(screen.availWidth-800)/2;
				var t=(screen.availHeight-500)/2;
                var ret = window.open(strUrl,'newWin','width=800,height=500,top='+t+',left='+l+',toolbar=no,menubar=no,location=no,status=yes');
				//var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
			    if(ret==undefined)
			    {
			        ret=""
			    }
			    
			    //document.getElementById("renyuanId").value=ret;
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9">
	
		<main class="content">
	      <div class="app-title">
	        <div>
	          <h2><i class="fa fa-dashboard"></i> 添加病情信息</h2>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12">
	          <div class="tile">
	            <div class="tile-body">
	
					<form action="<%=path %>/jibingAdd.action" name="formAdd" method="post">
					     <table class="table table-bordered" width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
							<tr bgcolor="#EEF4EA">
						        <td colspan="3" class='title'><span>员工病情</span></td>
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
							         病症：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							        <input type="text" name="zhengzhuang" size="50"/>
							    </td>
							</tr>
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							    <td width="25%" bgcolor="#FFFFFF" align="right">
							         员工：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							        <input type="text" name="renyuanId" id="renyuanId" readonly="readonly"/>
							        <input type="button" value="选择" onclick="renyuanAll()"/>
							    </td>
							</tr>
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							    <td width="25%" bgcolor="#FFFFFF" align="right">
							         患病时间：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							        <input name="huanshijian" class="Wdate" readonly="readonly" type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"/>
							    </td>
							</tr>
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
							    <td width="25%" bgcolor="#FFFFFF" align="right">
							         责任医生：
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							        <input type="text" name="yisheng" size="50"/>
							    </td>
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
