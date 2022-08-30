<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-30
  Time: 오후 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>deletePro</title>
    <link href="/resources/member/css/style.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>deletePro</h1>

<div>
  <form action="/logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}">>
  </form>

  <c:if test="${result==1 }">
    <script type="text/javascript">
      $(document).ready(function(){
        let formObj=$("form");	//form 태그 한개이기때문에 사용
        alert("삭제가 완료되었습니다.")
        formObj.submit();	//로그아웃 폼태그 submit 실행하여 요청
      })
      //로그아웃처리도 해주어야함
      //로그아웃처리는 시큐어리티가 진행해줌.post로 넘기기
    </script>
  </c:if>
  <c:if test="${result!=1 }">
    <script type="text/javascript">
      alert("비밀번호를 잘못 입력하셨습니다. 다시 입력해주세요...");
      history.go(-1);
    </script>
  </c:if>
</div>

</body>
</html>
