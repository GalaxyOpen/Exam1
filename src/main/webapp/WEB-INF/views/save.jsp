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
    <h2>홈쇼핑 회원 등록</h2>
    <form action="/save" method="post" name="saveForm">
        <table>
            <tr>
                <th>회원성명</th>
                <td>
                    <input type="text" name="custname" id="cust-name">
                </td>
            </tr>
            <tr>
                <th>회원전화</th>
                <td>
                    <input type="text" name="phone" id="phone" size="30">
                </td>
            </tr>
            <tr>
                <th>회원주소</th>
                <td>
                    <input type="text" name="address" id="address" size="50">
                </td>
            </tr>
            <tr>
                <th>가입일자</th>
                <td>
                    <input type="text" name="joindate" id="join-date">
                </td>
            </tr>
            <tr>
                <th>고객등급(A:VIP,B:일반,C:직원)</th>
                <td>
                    <input type="text" name="grade" id="grade">
                </td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td>
                    <input type="text" name="city" id="city">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input style="display: inline" type="submit" onclick="input_check()" value="등록">
                    <input style="display: inline" type="button" value="조회">
                </td>
            </tr>
        </table>
    </form>

</div>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const input_check=()=> {
        const custName = document.getElementById("cust-name");
        if (custName.value == "") {
            alert("이름 입력은 필수입니다.")
            custName.focus();
            const phone = document.getElementById("phone");
            if (phone.value == "") {
                alert("비밀번호 입력은 필수입니다.")
                phone.focus();
                const address = document.getElementById("address");
                if (address.value == "") {
                    alert("주소 입력은 필수입니다.")
                    address.focus();
                    const joindate = document.getElementById("join-date")
                    if (joindate.value == "") {
                        alert("가입한날짜를 확인해주세요")
                        joindate.focus();
                        const grade = document.getElementById("grade")
                        if (grade.value == "") {
                            alert("받으신 고객님의 등급을 입력해주세요")
                            grade.focus();
                            const city = document.getElementById("city")
                            if (city.value == "") {
                                alert("발급받으신 도시번호를 입력해주세요")
                                city.focus();
                            } else {
                                document.saveForm.submit();
                            }
                        } else {
                            document.saveForm.submit();
                        }
                    } else {
                        document.saveForm.submit();
                    }

                } else {
                    document.saveForm.submit();
                }
            } else {
                document.saveForm.submit();
            }
        }else{
            document.saveForm.submit();
        }
    }
</script>
</html>
