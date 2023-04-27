<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: 오후 4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const result = '${result}'
        console.log(result);
        if(result>0){
            alert("신규 회원 등록에 성공하였습니다.")
            location.href="/list";
        }else{
            alert("이미 가입하셨거나 신규가입이 불가능합니다.")
            location.href="/save";
        }
    </script>

</head>
<body>
</body>
</html>
