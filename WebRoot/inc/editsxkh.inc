<%@ page language="java" pageEncoding="utf-8" %>

	<s:form action="edit_sxkh" method="post">
	<tr>
		<td><s:textfield  id="ekhbh" label="客户编号"/></td>
	</tr>
	<tr>
		<td><s:textfield id="ekhmc" label="客户名称"/></td>
	</tr>
	<tr>
		<td><s:textfield id="elimit" label="授信额度"/></td>
	</tr>
	<tr>
		<td><s:textfield id="edays" label="授信期间"/></td>
	</tr>
	<tr>
		<td><s:textfield id="eyjkh" label="月结客户"/></td>
	</tr>
	<tr>
		<td><s:textfield id="ebalance" label="历史陈欠"/></td>
	</tr>
	<tr>
		<td><s:textfield id="elsh" label="起始流水号"/></td>
	</tr>
	<tr>
		<td>
        <s:hidden id="eid" />
        <s:hidden id="ebmbh" />    
        <input type="button" value="提交" onclick="updateSxkh()"/></td>
	</tr>
	</s:form>

