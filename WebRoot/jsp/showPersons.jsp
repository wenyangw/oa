<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@include file="../common/common.jsp" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>

<link rel="stylesheet" href="../js/ui/jquery-ui.css" />  
<link rel="stylesheet" href="../css/table.css" />



<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/ui/jquery-ui.js"></script>
<script type="text/javascript" src="../js/table.js"></script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[人员管理]-[员工信息]</td>
              </tr>
            </table></td>
            <td width="54%">
            <!-- 
            <table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">全选</div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1" onclick="javascript:showBlocker('addDIV',true,'增加员工信息');"><div align="center">新增</div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/33.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1" onclick="showDialog()"><div align="center">修改</div></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">删除</div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
             -->
            </td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
        	<!-- 列表标题栏 -->
            <tr>
            
            <td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">部门</span></div></td>
            <td width="14%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">姓名</span></div></td>
            <td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">性别</span></div></td>
            <td width="14%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">生日</span></div></td>
            <td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">内线</span></div></td>
            <td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">外线</span></div></td>
            <td width="12%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">手机</span></div></td>
            <td width="14%" height="22" background="../images/bg1.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">岗位</span></div></td>
            
            
          </tr>
          <c:if test="${!empty pm.list}">
          <c:forEach items="${pm.list}" var="person">
          
          <tr>
            
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.org.name}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.name}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.sex == "1" ? "男" : "女"}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.birth}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.inPhone}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.extPhone}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.cellPhone}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${person.duty.name}</span></div></td>
            
          </tr>
          </c:forEach>
		  </c:if>
          
          <!-- 在列表数据为空的时候，要显示的提示信息 -->
	    <c:if test="${empty pm.list}">
	    <tr>
	    	<td colspan="5" align="center" bgcolor="#EFF3F7" class="TableBody1" onmouseover="this.bgColor = '#DEE7FF';" onmouseout="this.bgColor='#EFF3F7';">
	    	没有找到相应的记录
	    	</td>
	    </tr>
	    </c:if>
          
        </table></td>
        <td width="8" background="../images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/tab_19.gif">
     <!-- 可以在这里插入分页导航条 -->
	<pg:pager url="showPersons.action" items="${pm.total}" export="currentPageNumber=pageNumber" maxPageItems="10" isOffset="true">
		<!--<pg:param name="parentId"/> -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;共有${pm.total}条记录，当前第 ${currentPageNumber}/<pg:last>${pageNumber}</pg:last>页</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40">
                  <pg:first>
					 	<a href="${pageUrl}"><img src="../images/first.gif" width="37" height="15" border="0"/></a>
				  </pg:first>
                  </td>
                  <pg:prev>
                  <td width="45">
                  	<a href="${pageUrl }"><img src="../images/back.gif" width="43" height="15" border="0"/></a>
                  </td>
                  </pg:prev>
<%--                  <pg:pages>--%>
<%--                  <td width="45">--%>
<%--						<c:choose>--%>
<%--						<c:when test="${currentPageNumber eq pageNumber }">--%>
<%--						<font color="red">${pageNumber }</font>--%>
<%--						</c:when>--%>
<%--						<c:otherwise>--%>
<%--						<a href="${pageUrl }">${pageNumber }</a>--%>
<%--					</c:otherwise>--%>
<%--				</c:choose>--%>
<%--				</td>--%>
<%--				</pg:pages>--%>
                <pg:next>
                  <td width="45">
						<a href="${pageUrl }"><img src="../images/next.gif" width="43" height="15" border="0"/></a>
				  </td>
				  </pg:next>
				  <pg:last>
                  <td width="40">
					<a href="${pageUrl }"><img src="../images/last.gif" width="37" height="15" border="0"/></a>
                  </td>
                  </pg:last>
                  <!-- 原代码中
                  <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" /> 
                    页 </span></div></td>
                    -->
                  <td width="40"></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></pg:pager>
    </td>
  </tr>
</table>
	
</body>
</html>
