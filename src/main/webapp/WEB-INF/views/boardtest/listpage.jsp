<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-27
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>listpage</title>
</head>
<body>

<h1>List Page</h1>

<div id="board_list">
    <table>
        <thead>
        <tr>
            <td>글 고유번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>작성일</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="board" items="${list}">
            <tr>
                <td>${board.bno}</td>
                <td>${board.title}</td>
                <td>${board.writer}</td>
                <td>${board.reg}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <form id="searchForm" action="listpage" method="get">
        <select name="sel" >
            <option value="">-------------</option>
            <option value="T">제목</option>
            <option value="C">내용</option>
            <option value="W">작성자</option>
            <option value="TC">제목+내용</option>
            <option value="TW">제목+작성자</option>
            <option value="TCW">제목+내용+작성자</option>
        </select>
        <input type="text" name="keyword" id="">
        <button class="btn">search</button>
        <input type="hidden" name="pageNum" value="${pager.cri.pageNum}">
        <input type="hidden" name="listQty" value="${pager.cri.listQty}">

    </form>
</div>

<div>
    <c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" step="1">
        <a id="pageMove" href="${num}">${num}</a>

    </c:forEach>
    <form id="pagingForm" action="listpage" method="get">
        <input type="hidden" name="pageNum" value="${pager.cri.pageNum}">
        <input type="hidden" name="listQty" value="${pager.cri.listQty}">
        <input type="hidden" name="sel" value="${pager.cri.sel}">
        <input type="hidden" name="keyword" value="${pager.cri.keyword}">
    </form>
</div>

pager : ${pager} <br>
pager.cri : ${pager.cri} <br>
pager.cri.pageNum : ${pager.cri.pageNum} <br>

<script !src="">
    console.log("test...");

    $(document).ready(function(){
        console.log("test2..");

        let searchForm = $("searchForm");
        console.log(searchForm);

        $("#searchForm button").on(
            "click",
            function(e) {
                if (!searchForm.find("option:selected")
                    .val()) {

                    //console.log("3333");

                    //검색 옵션중에 ----- 를 선택한경우 실행
                    alert("검색종류를 선택하세요!");
                    //return false --> 버튼을 눌렀을때 submit 이동 막으면서 함수 종료
                    return false;
                }
                if (!searchForm.find(
                    "input[name='keyword']").val()) {
                    //검색내용이 없을 경우 실행
                    alert("검색 내용을 입력하세요!");
                    return false;
                }
                e.preventDefault();
                //검색 진행할시 남아있는페이지가 아닌 1페이지로 바꾸기
                searchForm.find("input[name='pageNum']")
                    .val("1");
                searchForm.submit();
            })

    })
</script>

</body>
</html>
