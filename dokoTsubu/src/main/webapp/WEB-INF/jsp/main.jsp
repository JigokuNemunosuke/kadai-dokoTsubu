<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.User, model.Mutter, java.util.List" %>
<!-- <%-- セッションスコープからユーザー情報を取得 --%>
<% User loginUser = (User) session.getAttribute("loginUser"); %>
<%-- アプリケーションスコープに保存されたつぶやきリストを取得 --%>
<% List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList"); %>
<%-- リクエストスコープに保存されたエラーメッセージを取得 --%>
<% String errorMsg = (String) request.getAttribute("errorMsg"); %> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p><c:out value="${loginUser.name}" />さん、ログイン中
<a href="/dokoTsubu/Logout">ログアウト</a></p>
<p><a href="/dokoTsubu/Main">更新</a></p>
<form action="/dokoTsubu/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<c:if test="${not empty errorMsg}">
	<p>${errorMsg}</p>
</c:if>
<c:forEach var="mutter" items="${mutterList}">
	<p><c:out value="${mutter.userName}" /> : <c:out value="${mutter.text}" /></p>
</c:forEach>
</body>
</html>