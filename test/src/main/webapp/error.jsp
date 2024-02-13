<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="r.css" media="all">
<title>登録結果</title>
</head>
<%
	String name = (String) request.getAttribute("name");
	List<String> list = (List<String>) request.getAttribute("list");
%>
<body>
	<div class="blackboard-box">
	<h1>偉人図鑑</h1>
	<p>入力された名前は「<%= name %>」です</p><br>
	<h1>登録された偉人一覧</h1>	
	<ul>
	<form action="./Delete" method="post" id="deleteForm">
		<% for (String item : list) { %>
		<table style="margin: 0; padding-left:500px ;">
		<tr>
			<td style="color: white;">
				<input id="box1" name="ijin_list" type="checkbox" value="<%= item %>" />
				<%= item %>
			</td>
		</tr>
		</table>
		<% } %>
		<button action="./Display" type="submit" onclick="removeExample()">削除</button>
	</form><br>
	<p><a href=pattern1.jsp>偉人登録画面に戻る</a></p>
	<div class="chalk1"></div>
	<div class="chalk2"></div>
	</div>
</body>
</html>