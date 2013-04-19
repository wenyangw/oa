<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
function show(toLink){
	//$("#show", parent.document.body).attr("src", toLink);
	$(window.parent.document).find("#show").attr("src",toLink);
	}
</script>

<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>

<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
    	<td height="28" background="../images/main_40.gif">
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
        			<td width="19%">&nbsp;</td>
        			<td width="81%" height="20"><span class="STYLE1" onclick="show('welcome.jsp')">&nbsp;&nbsp;首&nbsp;页</span></td>
      			</tr>
    		</table>
    	</td>
  	</tr>
  	<tr>
    	<td valign="top">
    		<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      			<tr>
        			<td>
        				<table width="100%" border="0" cellspacing="0" cellpadding="0">
          					<tr>
            					<td height="23" background="../images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">
            						<table width="100%" border="0" cellspacing="0" cellpadding="0">
				              			<tr>
                							<td width="18%">&nbsp;</td>
                							<td width="82%" class="STYLE1">公文管理</td>
              							</tr>
            						</table>
            					</td>
          					</tr>
          					<tr>
            					<td background="../images/main_51.gif" id="submenu1">
			 						<div class="sec_menu" >  
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
              							<tr>
                							<td>
                								<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  									<tr>
                    									<td width="16%" height="25"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    									<td width="84%" height="23">
                    										<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        										<tr>
                          											<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('getLxrs.action')"><span class="STYLE3">发送文件</span></td>
                        										</tr>
                    										</table>
                    									</td>
                  									</tr>
                  									<tr>
                    									<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    									<td height="23">
                    										<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        										<tr>
                          											<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('showMessages.action')"><span class="STYLE3">接收文件</span></td>
                        										</tr>
                    										</table>
                    									</td>
                  									</tr>
                  									<tr>
                    									<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    									<td height="23">
                    										<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        										<tr>
                          											<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"  onclick="show('sendedMessages.action')"><span class="STYLE3">发出文件</span></td>
                        										</tr>
                    										</table>
                    									</td>
                  									</tr>
                  									<!-- 
                  									<tr>
                    									<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    									<td height="23">
                    										<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        										<tr>
                          											<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">其他业务</span></td>
                        										</tr>
                    										</table>
                    									</td>
                  									</tr>
                   									-->
                								</table>
                							</td>
              							</tr>
              							<tr>
                							<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              							</tr>
            						</table>
            						</div>
            					</td>
          					</tr>
				        </table>
					</td>
      			</tr>
      			<tr>
        			<td>
        				<table width="100%" border="0" cellspacing="0" cellpadding="0">
          					<tr>
            					<td height="23" background="../images/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                			<tr>
                  				<td width="18%">&nbsp;</td>
                  				<td width="82%" class="STYLE1">人员管理</td>
                			</tr>
            			</table>
            		</td>
          		</tr>
          		<tr>
            		<td background="../images/main_51.gif" id="submenu2">
            			<div class="sec_menu" >
                		<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  			<tr>
                    			<td>
                    				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        				<tr>
                          					<td width="16%" height="25"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          					<td width="84%" height="23">
                          						<table width="95%" border="0" cellspacing="0" cellpadding="0">
                              						<tr>
                                						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('showPersons.action')"><span class="STYLE3">员工信息</span></td>
                              						</tr>
                          						</table>
                          					</td>
                        				</tr>
                        				<tr>
                          					<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          					<td height="23">
                          						<table width="95%" border="0" cellspacing="0" cellpadding="0">
                              						<tr>
                                						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('editPerson.jsp')"><span class="STYLE3">个人信息</span></td>
                              						</tr>
                          						</table>
                          					</td>
                        				</tr>
                        				<tr>
                          					<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          					<td height="23">
                          						<table width="95%" border="0" cellspacing="0" cellpadding="0">
                              						<tr>
                                						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('changePassword.jsp')"><span class="STYLE3">修改密码</span></td>
                              						</tr>
                          						</table>
                          					</td>
                        				</tr>
                        				<!-- 
                        				<tr>
                          					<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          					<td height="23">
                          						<table width="95%" border="0" cellspacing="0" cellpadding="0">
                              						<tr>
                                						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">网站维护</span></td>
                              						</tr>
                          						</table>
                          					</td>
                        				</tr>
                         				-->
                    				</table>
                    			</td>
                  			</tr>
                  			<tr>
                    			<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
                  			</tr>
                		</table>
            			</div>
            		</td>
          		</tr>
        	</table>
        </td>
	</tr>
    <!-- 
    <tr>
    	<td>
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
        		<tr>
            		<td height="23" background="../images/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand">
            			<table width="100%" border="0" cellspacing="0" cellpadding="0">
                			<tr>
                  				<td width="18%">&nbsp;</td>
                  				<td width="82%" class="STYLE1">系统设置</td>
                			</tr>
            			</table>
            		</td>
          		</tr>
          		<tr>
            		<td background="../images/main_51.gif" id="submenu3" style="DISPLAY: none">
	            		<div class="sec_menu" >
    	            	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        	          		<tr>
            	        		<td>
                	    			<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    	    			<tr>
                        	  				<td width="16%" height="25"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          					<td width="84%" height="23">
                          						<table width="95%" border="0" cellspacing="0" cellpadding="0">
                              						<tr>
                                						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">人员管理</span></td>
                              						</tr>
                          						</table>
                          					</td>
	                        			</tr>
    		                   			<tr>
            	              				<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                	          				<td height="23">
                    	      					<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        	      					<tr>
                            	    					<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('showOrgs.action')"><span class="STYLE3">部门管理</span></td>
                              						</tr>
                          						</table>
	                          				</td>
    	                    			</tr>
        	                			<tr>
            	              				<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                	          				<td height="23">
                    	      					<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        	      					<tr>
                            	    					<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="show('showDuties.action')"><span class="STYLE3">岗位管理</span></td>
                              						</tr>
                          						</table>
                          					</td>
	                        			</tr>
    	                    			<tr>
        	                  				<td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
            	              				<td height="23">
                	          					<table width="95%" border="0" cellspacing="0" cellpadding="0">
                    	          					<tr>
                        	        					<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">网站安全</span></td>
                            	  					</tr>
                          						</table>
                          					</td>
	                        			</tr>
    	                			</table>
        	            		</td>
            	      		</tr>
                	  		<tr>
                    			<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
                  			</tr>
                		</table>
            			</div>
            		</td>
          		</tr>
        	</table>
		</td>
	</tr>
	-->
</table>
	</td>
	
  	</tr>
  	<tr>
    	<td height="18" background="../images/main_58.gif">
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
        			<td height="18" valign="bottom"><div align="center" class="STYLE3">版本：201211</div></td>
      			</tr>
    		</table>
    	</td>
	</tr>
</table>

<script>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="../images/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="../images/main_48.gif";
}
}
</script>
