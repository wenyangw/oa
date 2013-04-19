<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>企业信息管理系统_用户登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript" src="../js/validate.js"></script>
<script>
    if(parent.frames.length > 1)
        //parent.location.href = '/showLogin';
    window.open("login.jsp","_top");
</script>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="235" background="images/login_03.gif"><br></td>
      </tr>
      <tr>
        <td height="53"><table border="0" cellspacing="0" cellpadding="0" width="100%">
          <tr>
            <td width="394" height="53" background="images/login_05.gif">&nbsp;</td>
            <td width="206" background="images/login_06.gif">
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <form action="login.action" method="post">
              <tr>
                <td width="16%" height="25"><div align="right"><span class="STYLE1">用户</span></div></td>
                <td width="57%" height="25"><div align="center">
                  <input type="text" name="username" onblur="verify()" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td width="27%" height="25">&nbsp;</td>
              </tr>
              <tr>
                <td height="25"><div align="right"><span class="STYLE1">密码</span></div></td>
                <td height="25"><div align="center">
                  <input type="password" name="password" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td height="25"><div align="left"><input type="image" src="images/dl.gif" alt="登录"></div></td>
              </tr>
              </form>
            </table></td>
            <td width="362" background="images/login_07.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="213" background="images/login_08.gif" align="center">&nbsp;<span class="STYLE1">用户名：姓氏的全拼+名字每个字的首字母，初始密码为111111</span></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
