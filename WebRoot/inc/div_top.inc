<%@ page language="java" pageEncoding="gb2312"%>
<!--
	ʹ��˵����
	�û���Ҫ�Զ���Ĳ��֣�
	1��#testDIV
	2��.cssDialogTable_Bar ��Ӧtable��td�����ݣ���������ɾ������ա�ȡ����span
	3��#customer_div������
	
	Ҫ����ʹ�ø�Div�������ڣ�����������Ҫ�޸ĵ�ָ��������customer_div��������Ҫ�Զ�������ݣ�
	�ٸ���customer_div�����ݴ�С�͸߶ȵ���idΪtestDIV��div��style���ԡ�
	����ڹرմ��ڵİ�ť����onclick�¼���showBlocker('testDIV',false,'���ڵı���');
-->
<div id="testDIV" class="dialogDiv" style="width:450px;height:auto;display:none;">
<!-- ���ڱ��� -->
	<div id="dialogTitleDiv" class="dialogTitleDiv">
		<div id="dialogTitleStrSpan"></div><!-- ���ڱ��⣬�û����Զ��� -->
		<div id="dialogTitleCloseSpan" style="vertical-align:middle;cursor:hand;" onclick="showBlocker('testDIV',false,'');"></div>
	</div>
	<div id="dialogContentDiv" class="dialogContentDiv">
		<table cellpadding="0" cellspacing="0"  class="cssDialogTable_Bar"> 
			<!-- �û��Զ���İ�ť���� -->
			<tr><td><span class="cssDialogTable_Bar_saveBtn" onclick="showBlocker('testDIV',false,'');" style="vertical-align:middle;cursor:hand;">����</span></td></tr>
		</table>
		<table id="customer_div" cellpadding="0" cellspacing="0" width="100%" class="cssDialogTable_Content"> 