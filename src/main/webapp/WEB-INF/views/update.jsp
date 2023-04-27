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
  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <script src = "../resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="./component/header.jsp"%>
<%@include file="./component/nav.jsp"%>
<div id="section">
  <h2>홈쇼핑 회원 정보 수정</h2>
  <form action="/update" method="post">
    <table>
      <tr>
        <th>회원번호</th>
        <td>
          <input type="text" name="custno" value="${exam.custno}" readonly>
        </td>
      </tr>
      <tr>
        <th>회원성명</th>
        <td>
          <input type="text" name="custname" value="${exam.custname}">
        </td>
      </tr>
      <tr>
        <th>회원전화</th>
        <td>
          <input type="text" name="phone" size="30" value="${exam.phone}">
        </td>
      </tr>
      <tr>
        <th>회원주소</th>
        <td>
          <input type="text" name="address" size="50" value="${exam.address}">
        </td>
      </tr>
      <tr>
        <th>가입일자</th>
        <td>
          <input type="text" name="joindate" value="${exam.joindate}">
        </td>
      </tr>
      <tr>
        <th>고객등급(A:VIP,B:일반,C:직원)</th>
        <td>
          <input type="text" name="grade" value="${exam.grade}">
        </td>
      </tr>
      <tr>
        <th>도시코드</th>
        <td>
          <input type="text" name="city" value="${exam.city}">
        </td>
      </tr>
      <tr>
        <td colspan="2" style="text-align: center">
          <input style="display: inline" type="submit" value="수정">
          <input style="display: inline" type="button" value="조회">
        </td>
      </tr>
    </table>

  </form>
</div>
<%@include file="component/footer.jsp"%>
</body>
</html>
