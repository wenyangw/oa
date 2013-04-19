<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/common.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>

<link rel="stylesheet" href="../js/ui/jquery-ui.css" />
<link rel="stylesheet" href="../css/table.css" />
<link rel="stylesheet" href="../css/lxr.css" />

</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/ui/jquery-ui.js"></script>
<script type="text/javascript" src="../js/table.js"></script>
<script type="text/javascript" src="../js/email.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$.post("getOrgs.action", function(orgs){
			var orgSel = $("input#org").attr("value");
			$.each(orgs, function(index, org){
				//alert(org.name);
				if((index + 1) == orgSel){
					$("select.org").append("<option value='" + org.id + "' selected='selected'>" + org.name + "</option>");
				}else{
					$("select.org").append("<option value='" + org.id + "'>" + org.name + "</option>");
				}
			});
			
		});
		
		$.post("getDuties.action", function(duties){
			var dutySel = $("input#duty").attr("value");
			$.each(duties, function(index, duty){
				//alert(duty.name);
				if((index + 1) == dutySel){
					$("select.duty").append("<option value='" + duty.id + "' selected='selected'>" + duty.name + "</option>");
				}else{
					$("select.duty").append("<option value='" + duty.id + "'>" + duty.name + "</option>");
				}
			});
			
		});
		
		//alert($("input#org").attr("value"));
	});
		
</script>





</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<form action="editPerson.action" method="post">
	<tr>
    	<td height="30" background="../images/tab_05.gif">
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
        			<td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        			<td>
        				<table width="100%" border="0" cellspacing="0" cellpadding="0">
          					<tr>
            					<td width="46%" valign="middle">
            						<table width="100%" border="0" cellspacing="0" cellpadding="0">
              							<tr>
                							<td width="5%">
                								<div align="center"><img src="../images/tb.gif" width="16" height="16" /></div>
                							</td>
                							<td width="95%" class="STYLE1">
                								<span class="STYLE3">你当前的位置</span>：[员工管理]-[个人信息]
                							</td>
              							</tr>
            						</table>
            					</td>
            					<td width="54%">
            						<!-- 
            						<table border="0" align="right" cellpadding="0" cellspacing="0">
              							<tr>
                							<td width="60">
                								<table width="87%" border="0" cellpadding="0" cellspacing="0">
                  									<tr>
                    									<td class="STYLE1">
                    										<div align="center">
                      										<input type="checkbox" name="checkbox62" value="checkbox" />
                    										</div>
                    									</td>
                    									<td class="STYLE1">
                    										<div align="center">全选</div>
                    									</td>
                  									</tr>
                								</table>
                							</td>
                							<td width="60">
                								<table width="90%" border="0" cellpadding="0" cellspacing="0">
                  									<tr>
                    									<td class="STYLE1">
                    										<div align="center"><img src="../images/22.gif" width="14" height="14" /></div>
                    									</td>
                    									<td class="STYLE1">
                    										<div align="center">新增</div>
                    									</td>
                  									</tr>
                								</table>
                							</td>
                							<td width="60">
                								<table width="90%" border="0" cellpadding="0" cellspacing="0">
                  									<tr>
                    									<td class="STYLE1">
                    										<div align="center"><img src="../images/33.gif" width="14" height="14" /></div>
                    									</td>
                    									<td class="STYLE1">
                    										<div align="center">修改</div>
                    									</td>
                  									</tr>
                								</table>
                							</td>
                							<td width="52">
                								<table width="88%" border="0" cellpadding="0" cellspacing="0">
                  									<tr>
                    									<td class="STYLE1">
                    										<div align="center"><img src="../images/11.gif" width="14" height="14" /></div>
                    									</td>
                    									<td class="STYLE1">
                    										<div align="center">删除</div>
                    									</td>
                  									</tr>
                								</table>
                							</td>
              							</tr>
            						</table>
            						 -->
            					</td>
          					</tr>
        				</table>
        			</td>
        			<td width="16">
        				<img src="../images/tab_07.gif" width="16" height="30" />
        			</td>
      			</tr>
    		</table>
    	</td>
  	</tr>
  	<tr>
    	<td>
    		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="email">
      			<tr>
        			<td width="8" background="../images/tab_12.gif">&nbsp;</td>
        			<td>
        				<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          					<tr>
          					<!--
            					<td width="3%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center">
              					<input type="checkbox" name="checkbox" value="checkbox" />
            					</div></td>
            					<td width="3%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            					<td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">接收号码</span></div></td>
					            <td width="14%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">发送时间</span></div></td>
					            <td width="18%" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">邮件地址</span></div></td>
					            <td width="23%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">内容</span></div></td>
					            <td width="15%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
					            -->
          					</tr>
           					<tr>
          						<!--
            					<td height="20" bgcolor="#FFFFFF"><div align="center">
              					发送给：
            					</div></td>
            					-->
            
            					<td height="20" width="150" bgcolor="#FFFFFF" >
            						<div align="center" class="STYLE1"> 
             							<div align="right">姓名</div>
            						</div>
            					</td>
            
            					<td height="20" bgcolor="#FFFFFF"><div align="left" ><span class="STYLE1">
            						<input type="text" name="name" size="20" value="${person.name}"></span></div>
            					</td>
					            <!--
            					<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            					<td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
					            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
					            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
					          	-->
          					</tr>
          					<tr>
				          	<!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox3" value="checkbox" />
				            </div></td>
				            -->
            				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              					<div align="right">性别</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            				<c:if test="${person.sex == '1'}">
            					<input type="radio" id="man" name="sex" value="1" checked="checked">男
            					&nbsp;&nbsp;&nbsp;&nbsp;
            					<input type="radio" id="woman" name="sex" value="0">女
            				</c:if>
            				<c:if test="${person.sex == '0'}">
            					<input type="radio" id="man" name="sex" value="1">男
            					&nbsp;&nbsp;&nbsp;&nbsp;
            					<input type="radio" id="woman" name="sex" value="0" checked="checked">女
            				</c:if>	
            				</span></div>
            				</td>
				            <!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				            -->
          				</tr>
          				
          				<tr>
				          	<!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox5" value="checkbox" />
				            </div></td>
				            -->
            				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1" >
              					<div align="right">生日</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            					<input type="text" name="birth" size="20" value="${person.birth}">&nbsp;日期格式：2013/01/01,1-9月或日请前面填0补足2位</span></div></td>
				            <!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				            -->
          				</tr>
          				<tr>
          					<!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox4" value="checkbox" />
				            </div></td>
				            -->
            				<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1" >
              					<div align="right">内线电话</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            					<input type="text" name="inPhone" size="20"  value="${person.inPhone}"></span></div></td>
				            <!--
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				            -->
          				</tr>
				          
				          <tr>
				          	<!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox6" value="checkbox" />
				            </div></td>
				             -->
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1" >
				              <div align="right">外线电话</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
				            	<input type="text" name="extPhone" size="20" value="${person.extPhone}"></span></div></td>
				            <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				             -->
				          </tr>
				          
				          <tr>
				          <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox7" value="checkbox" />
				            </div></td>
				             -->
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="right">手机</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
				            	<input type="text" name="cellPhone" size="20" value="${person.cellPhone}"></span></div></td>
				            <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				             -->
				          </tr>
				          <tr>
				          <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox8" value="checkbox" />
				            </div></td>
				             -->
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="right">部门</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1"><select name="org" class="org"></select><input type="hidden" value="${person.org.id}" id="org"/></span></div></td>
				            <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				             -->
				          </tr>
				          <tr>
				          <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox9" value="checkbox" />
				            </div></td>
				             -->
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="right">岗位</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1"><select name="duty" class="duty" ></select><input type="hidden" value="${person.duty.id}" id="duty"/></span></div></td>
				            <!-- 
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				             -->
				          </tr>
				          <!-- 
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox10" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">09</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox11" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">10</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox12" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">11</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox13" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">12</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox14" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">13</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox15" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">14</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox16" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">15</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
					          -->
						</table>
					</td>
        			<td width="8" background="../images/tab_15.gif">&nbsp;</td>
      			</tr>
    		</table>
    	</td>
  	</tr>
  	<tr>
    	<td height="35" background="../images/tab_19.gif">
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
        			<td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /></td>
        			<td width="150">
				        <!-- 
				        <table width="100%" border="0" cellspacing="0" cellpadding="0">
				          <tr>
				            <td class="STYLE4">&nbsp;&nbsp;共有 120 条记录，当前第 1/10 页</td>
				            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
				                <tr>
				                  <td width="40"><img src="../images/first.gif" width="37" height="15" /></td>
				                  <td width="45"><img src="../images/back.gif" width="43" height="15" /></td>
				                  <td width="45"><img src="../images/next.gif" width="43" height="15" /></td>
				                  <td width="40"><img src="../images/last.gif" width="37" height="15" /></td>
				                  <td width="100"><div align="center"><span class="STYLE1">转到第
				                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" /> 
				                    页 </span></div></td>
				                  <td width="40"><img src="../images/go.gif" width="37" height="15" /></td>
				                </tr>
				            </table>
            		</td>
          		</tr>
        	</table>
        	-->
        </td>
        <td>
        	<input type="submit" value="保存" />
        	<input type="button" value="取消" />
        </td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
        </tr>
			</table>
		</td>
	</tr>
	</form>
</table>

</body>
</html>
