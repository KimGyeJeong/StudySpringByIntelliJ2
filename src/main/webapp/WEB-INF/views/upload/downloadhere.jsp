<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-26
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>downloadhere</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<h1>Download Here</h1>

<div>
    <table border="1">
        <tr>
            <td>원본이름</td>
            <td>타입</td>
            <td>UUID</td>
            <td>DB 저장 이름</td>
            <td>사진 저장된 경로</td>
            <td></td>
        </tr>
        <tr>
            <%--   <td>list : ${list}</td>--%>
        </tr>
        <c:set var="i" value="1"/>
        <c:forEach var="temp" items="${list}">
            <%--
             <td><c:out value="${temp.Img_Name}"></c:out></td>
             에러 발생 코드.. temp.img_Name 으로 사용해야함.. --%>

            <form id="downloadPathForm" action="downloadhere2" method="post">
            <tr>
                <td><a id="downloadBtn" href="${i}" target="_blank" data-src="${temp.img_Save_Path}">${temp.img_OriginName}</a></td>
                <td>${temp.img_Type}</td>
                <td>${temp.img_UUID}</td>
                <td>${temp.img_Name}</td>
                <td>${temp.img_Save_Path}</td>
                <td><img src="${temp.img_Save_Path}" width="200"></td>
            </tr>
            i : ${i}    <!-- 1, 2, 3 -->
            <!--<c:set var="i" value="${i+1}"/>-->

                <input type="submit" value="다운"/>
                <input type="text" name="imgPath" id="" value="${temp.img_Save_Path}"/>
            </form>
        </c:forEach>
    </table>

</div>

</body>
</html>
