<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Title</title>
    <link rel="stylesheet" href="../resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src = "/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="./component/header.jsp"%>
<%@include file="./component/nav.jsp"%>
<div id="section">
    <h2>회원목록조회/수정</h2>
    <table>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
        </tr>
        <c:forEach items="${examList}" var="exam">
            <tr>
                <td>
                    <a style="text-decoration: none; color: white"
                       href="/detail?custno=${exam.custno}">${exam.custno}</a>
                </td>
                <td>${exam.custname}</td>
                <td>${exam.phone}</td>
                <td>${exam.address}</td>
                <td>${exam.joindate}</td>
                <td>${exam.grade}</td>
                <td>${exam.city}</td>
                <td>
                    <button onclick="update_exam('${exam.custno}')">수정</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="component/footer.jsp"%>
</body>
<script>

    const update_exam=(custno)=>{
        location.href="/update?custno="+custno;
                               }
</script>
</html>
