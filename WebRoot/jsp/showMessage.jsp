<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>

<link rel="stylesheet" href="../js/ui/jquery-ui.css" />
<link rel="stylesheet" href="../css/table.css" />

</style>
<script type="text/javascript" src="../js/table.js"></script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                								<span class="STYLE3">你当前的位置</span>：[公文管理]-[查看文件]
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
             							<div align="right">发件人</div>
            						</div>
            					</td>
            
            					<td height="20" bgcolor="#FFFFFF"><div align="left" ><span class="STYLE1">${message.sender.name}</span></div>
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
              					发送给：
            					</div></td>
            					-->
            
            					<td height="20" width="150" bgcolor="#FFFFFF" >
            						<div align="center" class="STYLE1"> 
             							<div align="right">收件人</div>
            						</div>
            					</td>
            
            					<td height="20" bgcolor="#FFFFFF"><div align="left" ><span class="STYLE1">${receivers}</span></div>
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
              					<div align="right">发送时间</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">${message.sendedTime}</span></div>
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
              					<div align="right">主&nbsp;&nbsp;题</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">${message.subject}</span></div>
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
              					<div align="right">内&nbsp;&nbsp;容</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1"><textarea rows="15" cols="80" name="content" >${message.content}</textarea></span></div></td>
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
              					<div align="right">附&nbsp;&nbsp;件</div>
            					</div>
            				</td>
            				<td height="20" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            				<c:forEach items="${papers}" var="paper">
            					<a href="download.action?fileName=${paper.fileName}&amp;filePath=${paper.filePath}">${paper.fileName}</a><br>
            				</c:forEach>
            				</span></div></td>
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
				              <input type="checkbox" name="checkbox6" value="checkbox" />
				            </div></td>
				            
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1" >
				              <div align="center">05</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				            
				          </tr>
				          
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox7" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">06</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox8" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">07</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
				          <tr>
				            <td height="20" bgcolor="#FFFFFF"><div align="center">
				              <input type="checkbox" name="checkbox9" value="checkbox" />
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
				              <div align="center">08</div>
				            </div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
				            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163.com</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">南京科技股份有限公司…</span></div></td>
				            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" />编辑&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" />删除</span></div></td>
				          </tr>
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
        <td width="100%">
        	
        </td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
        </tr>
			</table>
		</td>
	</tr>
</table>

</body>
</html>
