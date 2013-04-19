<%@ page language="java" pageEncoding="utf-8" %>

	<s:form action="add_sxkh" method="post">
	<tr>
		<td><s:textfield  id="khbh" label="客户编号"/></td>
	</tr>
	<tr>
		<td><s:textfield id="khmc" label="客户名称" /></td>
	</tr>
	<tr>
		<td><s:textfield id="limit" label="授信额度" /></td>
	</tr>
	<tr>
		<td><s:textfield id="days" label="授信期间" /></td>
	</tr>
	<tr>
		<td><s:textfield id="yjkh" label="月结客户" /></td>
	</tr>
	<tr>
		<td><s:textfield id="balance" label="历史陈欠" /></td>
	</tr>
	<tr>
		<td><s:textfield id="lsh" label="起始流水号" /></td>
	</tr>
	<tr>
		<td>
            <s:hidden id="bmbh" value="%{#session.bmbh}" />
            <input type="button" value="提交" onclick="addsxkh()"/>
        </td>
	</tr>
	</s:form>

