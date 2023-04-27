<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
  <script src = "/resources/js/bootstrap.bundle.min.js"></script>
  <style>
    *{
      box-sizing: border-box;
    }

    ul{

      list-style-type: none;
      overflow: hidden;
      background-color: dodgerblue;
    }
    li{
      float: left;
    }
    li a {
      /*한줄에 표현도 하고 블록 요소 특징도 사용가능
      블록요소로 지정해야 높이 너비 지정 가능
      인라인 요소는 높이 너비 지정이 불가능함*/
      display: inline-block;
      padding : 15px 15px;
      text-align: center;
      /* a태그에 적용된 밑줄 없애기*/
      text-decoration : none ;
      color: white;
    }

    li a:hover{
      background-color: whitesmoke;
    }

    body {
      height : 3000px;
    }

    .container {
      border : 3px solid #855A30;
      background-color : grey;
    }

    h2 {
      text-align : center;
    }

    .header {
      border : 3px solid #d2386c;
    }

    .nav {
      border: 3px solid #0027b5;

      /*브라우저 가로 비율 30%를 가져감.*/

    }

    .section {
      border : 3px solid #fdac53;

      /*브라우저 가로 비율 70퍼센트를 가져감*/

    }
    .main::after { /*가상선택자*/
      content:"";
      clear: both;
      display : table;
    } /*nav와 section을 1자형으로 놓고 footer를 내리기 위한 코딩문*/
    .footer {
      border: 3px solid #00a170;
    }


  </style>
</head>
<body>
<div class ="container">
  <div class ="header">
    <h2>쇼핑몰 회원관리 ver 1.0</h2>
  </div>
  <div class ="nav">
    <ul>
      <li>
        <a href="/save">회원등록</a>
      </li>
      <li>
        <a href="/list">회원목록조정/수정</a>
      </li>
      <li>
        <a href="">회원매출조회</a>
      </li>
      <li>
        <a href="/">홈으로</a>
      </li>
    </ul>
  </div>
</div>
  <div class="container">
    <div class="section">
<table class = "table table-dark table-hover">
  <tr>
    <th>회원번호</th>
    <th>회원성명</th>
    <th>전화번호</th>
    <th>주소</th>
    <th>가입날짜</th>
    <th>등급</th>
    <th>도시번호</th>
  </tr>
  <tr>
    <th>${exam.custno}</th>
    <th>${exam.custname}</th>
    <th>${exam.phone}</th>
    <th>${exam.address}</th>
    <th>${exam.joindate}</th>
    <th>${exam.grade}</th>
    <th>${exam.city}</th>

  </tr>
  <tr>
  <button onclick="fun1">홈으로</button>
  </tr>
  <%--    id: ${exam.custno}<br> 이하 교수님 풀이 --%>
  <%--    name: ${exam.custname}<br>--%>
  <%--    publisher: ${exam.phone}<br>--%>
  <%--    author: ${exam.address}<br>--%>
  <%--    price: ${exam.joindate}<br>--%>
  <%--    price: ${exam.grade}<br>--%>
  <%--    price: ${exam.city}<br>--%>
</table>
    </div>
  </div>
<div class="container">
  <div class="footer">
    HRDKOREA Copyright 2016. All rights reserved. Human Resources Development Service of Korea.
  </div>
</div>
</body>
<script>
  const fun1 = () => {
    location.href ="index";
  }
</script>
</html>
