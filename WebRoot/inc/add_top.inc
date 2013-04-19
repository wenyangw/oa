<%@ page language="java" pageEncoding="gb2312"%>
<!--
	使用说明：
	用户需要自定义的部分：
	1、#addDIV
	2、.cssDialogTable_Bar 对应table的td的内容，可以添加删除、清空、取消等span
	3、#customer_div的内容
	
	要正常使用该Div弹出窗口，请首先在需要修改的指定的区域customer_div内添加需要自定义的内容；
	再根据customer_div的内容大小和高度调整id为addDIV的div的style属性。
	最后在关闭窗口的按钮调用onclick事件：showBlocker('addDIV',false,'窗口的标题');
-->
<div id="addDIV" class="dialogDiv" style="width:450px;height:auto;display:none;">
<!-- 窗口标题 -->
	<div id="dialogTitleDiv" class="dialogTitleDiv">
		<div id="dialogTitleStrSpan"></div><!-- 窗口标题，用户可自定义 -->
		<!--
		<div id="dialogTitleCloseSpan" style="vertical-align:middle;cursor:hand;" onclick="showBlocker('addDIV',false,'');"></div>
		-->
	</div>
	<div id="dialogContentDiv" class="dialogContentDiv">
		<table cellpadding="0" cellspacing="0"  class="cssDialogTable_Bar"> 
			<!-- 用户自定义的按钮区域 -->
			<tr><td><span class="cssDialogTable_Bar_saveBtn" onclick="showBlocker('addDIV',false,'');" style="vertical-align:middle;cursor:hand;">关闭</span></td></tr>
		</table>
		<table id="customer_div" cellpadding="0" cellspacing="0" width="100%" class="cssDialogTable_Content"> 
